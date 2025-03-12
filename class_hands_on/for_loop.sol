// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberUtilities {
    
    uint[] public numbersList = [1, 3, 5, 7, 9, 11, 13, 15]; // Example list
    uint[] public longList = [2, 4, 6, 8, 10, 12, 14, 16, 17, 19]; // Example list

    // Function to check if a number exists in numbersList
    function numbersListLoop(uint userNumber) public view returns (bool) {
        for (uint i = 0; i < numbersList.length; i++) {
            if (numbersList[i] == userNumber) {
                return true;
            }
        }
        return false;
    }

    // Function to count even numbers in longList
    function evenNumbersLoop() public view returns (uint) {
        uint count = 0;
        for (uint i = 0; i < longList.length; i++) {
            if (longList[i] % 2 == 0) {
                count++;
            }
        }
        return count;
    }

    // Function to add a number to numbersList
    function addToNumbersList(uint num) public {
        numbersList.push(num);
    }

    // Function to add a number to longList
    function addToLongList(uint num) public {
        longList.push(num);
    }
}
