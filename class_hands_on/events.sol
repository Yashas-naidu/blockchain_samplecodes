// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskManager {
    address public admin;
    string[] public tasks;
    
    constructor() {
        admin = msg.sender;
    }
    
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }
    
    function addTask(string memory _task) public onlyAdmin {
        tasks.push(_task);
    }
    
    function deleteTask(uint index) public onlyAdmin {
        require(index < tasks.length, "Index out of bounds");
        // Move the last element to the deleted position and pop the last element
        tasks[index] = tasks[tasks.length - 1];
        tasks.pop();
    }
    
    function getAllTasks() external view returns (string[] memory) {
        return tasks;
    }
}