// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract VendingMachine {

    // State variables
    address public owner;
    mapping(address => uint) public donutBalances;

    // Constructor
    // Sets the deployer as owner
    // Initializes vending machine with 100 donuts
    constructor() {
        owner = msg.sender;
        donutBalances[address(this)] = 100;
    }

    // Modifier for owner-only access
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can restock.");
        _;
    }

    // Check vending machine stock
    function getVendingMachineBalance() public view returns (uint) {
        return donutBalances[address(this)];
    }

    // Restock function (only owner can call)
    function restock(uint amount) public onlyOwner {
        donutBalances[address(this)] += amount;
    }

    // Purchase donuts
    function purchase(uint amount) public payable {
        require(msg.value >= amount * 2 ether, "You must pay at least 2 ETH per donut");
        require(donutBalances[address(this)] >= amount, "Not enough donuts in stock");

        donutBalances[address(this)] -= amount;
        donutBalances[msg.sender] += amount;
    }
}