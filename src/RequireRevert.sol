// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract RequireRevert {
    uint256 public x;

    function setValue(uint a) public {
        require(a > 10, "value should greater than 10");
        x = a;
    }
}
