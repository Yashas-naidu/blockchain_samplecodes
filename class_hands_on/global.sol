// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercise2 {
    uint256 public value; // State variable

    // Constructor to initialize value (optional)
    constructor(uint256 _initialValue) {
        value = _initialValue;
    }

    // Function to return 3 multiplied by 7
    function multiply() public pure returns (uint256) {
        return 3 * 7;
    }

    // Function to return state variable value + 3
    function valuePlusThree() public view returns (uint256) {
        return value + 3;
    }
}
