const { chai } = require("chai");
const { ethers } = require("hardhat");

const tokens = (n) => {
  return ethers.utils.parseUnits(n.toString(), "ether");
};

describe("MeilenAzon", () => {
  let meilenazon;
  let deployer, buyer;

  beforeEach(async () => {
    [deployer, buyer] = await ethers.getSigners();

    const MeilenAzon = await ethers.getContractFactory("Meilenazon");
    meilenazon = await MeilenAzon.deploy();
  });

  describe("Deployment", () => {
    it("sets the owner", async () => {
      expect(await meilenazon.owner()).to.equal(deployer.address);
    });
  });
});
