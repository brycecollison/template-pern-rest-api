const express = require("express");
const apiRouter = express.Router();
const bcrypt = require("bcrypt");

// import routers
const exampleRouter = require("./example");

// prisma setup
const { PrismaClient } = require("@prisma/client");

// initialize prisma client
const prisma = new PrismaClient();

// api info endpoint
apiRouter.get("/", async (req, res) => {
  // send authentication status, admin, and userId data
  res.json({
    info: "example REST API built on express and Node",
    authenticated: req.session.authenticated
      ? req.session.authenticated
      : false,
    admin: req.session.user ? req.session.user.admin : false,
    userId: req.session.user ? req.session.user.userId : undefined,
  });
});

// authentication verification middleware
async function checkAuthentication(req, res, next) {
  const session = req.session;

  if (session.authenticated === true) {
    next();
  } else {
    res
      .status(403)
      .send({ message: "Unauthenticated request to a protect resource" });
  }
}

async function checkAdmin(req, res, next) {
  const session = req.session;

  if (session.user.admin === true) {
    next();
  } else {
    res
      .status(403)
      .send({ message: "Unauthenticated request to a protect resource" });
  }
}

// login endpoint
apiRouter.post("/login", async (req, res) => {
  res.setHeader("Access-Control-Allow-Credentials", "true");
  const { username, password } = req.body;

  if (!username || !password) {
    res
      .status(400)
      .send({ message: "Username or password missing in req body" });
  }

  // will only work if you have prisma configured with a schema called "users"
  const user = await prisma.users.findUnique({
    where: {
      username: username,
    },
  });

  if (user === null) {
    res.status(404).send({ message: "User not found" });
  } else {
    try {
      const matchedPassword = await bcrypt.compare(password, user.password);
      if (!matchedPassword) {
        res.status(401).send({ message: "Authentication error" });
      } else if (matchedPassword) {
        req.session.authenticated = true;
        req.session.user = {
          userId: user.id,
          admin: user.is_admin,
        };

        req.session.save();
        res.status(200).send({
          authenticated: req.session.authenticated,
          admin: req.session.user.admin,
          userId: user.id,
        });
      }
    } catch (e) {
      console.log(e);
    }
  }
});

// Cookies library needed to enable destruction of connect.sid cookie on client side
const Cookies = require("js-cookie");

// logout endpoint
apiRouter.post("/logout", (req, res) => {
  req.session.destroy((e) => console.log(e));
  Cookies.remove("connect.sid");
  res.status(200).json({ url: `${process.env.FRONTEND_URL}/` });
});

apiRouter.use("/example", exampleRouter);

module.exports = apiRouter;
