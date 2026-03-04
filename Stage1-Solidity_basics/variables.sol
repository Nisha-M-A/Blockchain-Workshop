// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {

    // State Variable (stored on blockchain)
    uint public count = 5;

    function getLocalVariable() public pure returns(uint) {
        uint localVar = 100;  // Local Variable
        return localVar;
    }

    function getGlobalVariable() public view returns(address) {
        return msg.sender;  // Global Variable
    }
}