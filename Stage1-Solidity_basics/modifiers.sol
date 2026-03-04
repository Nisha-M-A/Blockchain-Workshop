// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifiers {

    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
    }

    // Modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function setValue(uint _value) public onlyOwner {
        value = _value;
    }
}