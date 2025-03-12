// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberCheck {
    
    // Function to check if a number is Even or Odd
    function checkNumber(uint num) public pure returns (string memory) {
        return num % 2 == 0 ? "Even" : "Odd";
    }

    // Function to check multiple numbers and return an array of results
    function checkMultipleNumbers(uint[] memory numbers) public pure returns (string[] memory) {
        string[] memory results = new string[](numbers.length);
        
        for (uint i = 0; i < numbers.length; i++) {
            results[i] = checkNumber(numbers[i]);
        }
        
        return results;
    }
}
