const exampleRouter = require("express").Router();
module.exports = exampleRouter;

const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function getMockData(req, res) {
  try {
    // mock data fetch
    function getData() {
      return 'data'
    }
    const data = getData()

    // example prisma query
    // const data = await prisma.exampleSchema.findMany()
    res.status(200).send({ data: data });
  } catch (e) {
    console.log(e);
    res.status(500).send({ message: "We ran into an issue", error: e });
  }
}

exampleRouter.get('/', getMockData)
