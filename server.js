require("dotenv").config();
const express = require("express");
const app = express();
const PORT = process.env.PORT || 3001;
const session = require("express-session");
const cookieParser = require("cookie-parser");

// middleware
const bodyParser = require("body-parser");
const cors = require("cors");

app.use(cookieParser(process.env.SESSION_SECRET));

// cors middleware config
app.use(
  cors({
    origin: process.env.FRONTEND_URL,
    credentials: true,
    methods: "GET,PUT,POST,DELETE",
    secure: process.env.ENV === "production" ? true : false,
    sameSite: process.env.ENV === "production" ? "none" : "lax",
  })
);

// legacy pg connection setup
// pg db store setup
// documentation: https://www.npmjs.com/package/connect-pg-simple
const pgSession = require("connect-pg-simple")(session);

const Pool = require("pg").Pool;

// development db connection configuration
const devConfig = {
  connectionString: process.env.PG_DB_URL,
  ssl: false,
};

// production db connection configuration
const proConfig = {
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false,
  },
};

// documentation: https://github.com/brianc/node-postgres/tree/master/packages/pg-pool
const pool = new Pool(process.env.ENV === "production" ? proConfig : devConfig);

// mysql connection setup
// const mysql2 = require("mysql2/promise");
// const MySQLStore = require("express-mysql-session")(session);

// configs
// const config = {
//   host: process.env.MYSQL_HOST,
//   port: process.env.MYSQL_PORT,
//   user: process.env.MYSQL_USER,
//   password: process.env.MYSQL_PASS,
//   database: process.env.MYSQL_DB,
// };
// const connection = mysql2.createPool(config);
// const sessionStore = new MySQLStore({}, connection);

// // console.log("session store:");
// // console.log(sessionStore);

app.set("trust proxy", 1);

// session setup
app.use(
  session({
    store: new pgSession({
      pool: pool,
      createTableIfMissing: true,
    }),
    secret: process.env.SESSION_SECRET,
    cookie: {
      maxAge: 3600000,
      httpOnly: false,
      secure: process.env.ENV === "production" ? "true" : "auto",
      sameSite: process.env.ENV === "production" ? "none" : "lax",
    },
    saveUninitialized: false,
    resave: true,
  })
);

// body parsing middleware
app.use("/", bodyParser.json());
app.use("/", bodyParser.urlencoded({ extended: true }));

const apiRouter = require("./api/api");
app.use("/", apiRouter);

app.listen(PORT, () => console.log(`App listening on port ${PORT}`));
