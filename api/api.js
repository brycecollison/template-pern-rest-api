const express = require("express");
const apiRouter = express.Router();
const bcrypt = require("bcrypt");

// import routers
const usersRouter = require("./users");
const dishesRouter = require("./dishes");
const appliancesRouter = require("./appliances");
const mealsRouter = require("./meals");

// prisma setup
const { PrismaClient } = require("@prisma/client");

// initialize prisma client
const prisma = new PrismaClient();

// legacy PG setup
// import pool config for auth check middleware
// const pool = require("../db");

// api info endpoint
apiRouter.get("/", async (req, res) => {
  // console.log(`auth status: ${req.session.authenticated}`);

  res.json({
    info: "REST API for meal planner",
    authenticated: req.session.authenticated
      ? req.session.authenticated
      : false,
    admin: req.session.user ? req.session.user.admin : false,
    userId: req.session.user ? req.session.user.userId : undefined,
  });
});

// authentication verification middleware
async function checkAuthentication(req, res, next) {
  // console.log("checking auth");
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
  // console.log("checking auth");
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
  // console.log(
  //   `username in login endpoint: ${username} | password in login endpoint: ${password}`
  // );

  if (!username || !password) {
    res
      .status(400)
      .send({ message: "Username or password missing in req body" });
  }

  const user = await prisma.users.findUnique({
    where: {
      username: username,
    },
  });

  // console.log(user);

  if (user === null) {
    // console.log("no matching user found");
    res.status(404).send({ message: "User not found" });
  } else {
    try {
      const matchedPassword = await bcrypt.compare(password, user.password);
      if (!matchedPassword) {
        // console.log("no pass match");
        res.status(401).send({ message: "Authentication error" });
      } else if (matchedPassword) {
        // console.log("login successful");
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
        console.log(req.session);
      }
    } catch (e) {
      console.log(e);
    }
  }
});

const Cookies = require("js-cookie");
// logout endpoint
apiRouter.post("/logout", (req, res) => {
  req.session.destroy((e) => console.log(e));
  Cookies.remove("connect.sid");
  // console.log(Cookies.get());
  res.status(200).json({ url: `${process.env.FRONTEND_URL}/` });
});

apiRouter.use("/users", usersRouter);
apiRouter.use("/dishes", checkAuthentication, dishesRouter);
apiRouter.use("/appliances", checkAuthentication, appliancesRouter);
apiRouter.use("/meals", checkAuthentication, mealsRouter);

module.exports = apiRouter;
