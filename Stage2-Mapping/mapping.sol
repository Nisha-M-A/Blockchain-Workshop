// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {

    // Mapping: address => uint
    mapping(address => uint) public balances;

    // Function to set balance for sender
    function setBalance(uint _amount) public {
        balances[msg.sender] = _amount;
    }

    // Function to increase balance
    function increaseBalance(uint _amount) public {
        balances[msg.sender] += _amount;
    }

    // Function to get balance of any address
    function getBalance(address _user) public view returns (uint) {
        return balances[_user];
    }
}