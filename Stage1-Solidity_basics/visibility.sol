// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Visibility {

    uint public publicVar = 1;
    uint private privateVar = 2;
    uint internal internalVar = 3;

    function getPrivateVar() public view returns(uint) {
        return privateVar;
    }

    function getInternalVar() public view returns(uint) {
        return internalVar;
    }
}