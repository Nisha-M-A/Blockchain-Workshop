// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Functions {

    uint public number;

    // Function to set value
    function setNumber(uint _num) public {
        number = _num;
    }

    // Function to get value
    function getNumber() public view returns(uint) {
        return number;
    }

    // Function with return value
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}