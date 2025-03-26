// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskManager {
    address public admin;
    string[] public tasks;
    
    constructor() {
        admin = msg.sender;
    }
    
    modifier onlyAdmin() {
        if (msg.sender != admin) {
            revert("Only admin can perform this action");
        }
        _;
    }
    
    function addTask(string memory _task) public onlyAdmin {
        tasks.push(_task);
    }
    
    function deleteTask(uint index) public onlyAdmin {
        if (index >= tasks.length) {
            revert("Index out of bounds");
        }
        tasks[index] = tasks[tasks.length - 1];
        tasks.pop();
    }
    
    function getAllTasks() external view returns (string[] memory) {
        return tasks;
    }
}