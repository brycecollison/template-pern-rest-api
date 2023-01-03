const appliancesRouter = require("express").Router();
module.exports = appliancesRouter;

const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function getAllAppliances(req, res) {
  try {
    const appliances = await prisma.appliances.findMany();
    res.status(200).send({ data: appliances });
  } catch (e) {
    console.log(e);
    res.status(500).send({ message: "We ran into an issue", error: e });
  }
}

appliancesRouter.get('/', getAllAppliances)
