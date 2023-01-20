import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  // add code here that will help you pass the test
  let wins = 0;
  while (wins < 10) {
    await attacker.hackContract()
    wins++;
  }
 };

export default helper;
