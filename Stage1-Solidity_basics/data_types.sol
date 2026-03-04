// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypes {

    // String
    string public myString = "Hello Blockchain";

    // Boolean
    bool public isActive = true;

    // Unsigned Integer
    uint public myUint = 10;

    // Signed Integer
    int public myInt = -5;

    // Address
    address public myAddress = msg.sender;

}