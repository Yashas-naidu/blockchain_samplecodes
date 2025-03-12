// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Solidity1 {
    uint public ab = 10;
    uint public bc = 300;
    bool public lieDetector = true;
    string public errorMessageText = "Error! There has been a mistake";

    uint public wallet = 500;  // New integer variable
    bool public spend = false; // New boolean variable
    string public notifySpend = "You have spent money"; // New string variable

    constructor() {}

    // Adding two integers
    function getResult() public pure returns (uint) {
        uint a = 1;
        uint b = 14;
        uint result = a + b;
        return result;
    }
}
