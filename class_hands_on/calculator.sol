// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArithmeticExercises {
    
    // Function to demonstrate postfix decrement and its effect
    function calculator() public pure returns (uint) {
        uint a = 5;
        uint result = a--; // Post-decrement: returns 'a' first, then decrements
        return result; // Returns 5, but 'a' is now 4 internally
    }

    // Function to find the remainder of 3 % 4
    function findRemainder() public pure returns (uint) {
        return 3 % 4; // Remainder of 3 / 4 is 3
    }

    // Arithmetic Exercises
    function arithmeticResults() public pure returns (uint, uint, uint, uint) {
        uint a = 2;
        uint b = 12;

        uint ex1 = a + b - b + a;   // 2 + 12 - 12 + 2 = 4
        uint ex2 = 2 * b * b - 1;   // 2 * 12 * 12 - 1 = 287
        uint ex3 = b + (b++) + (a++); // 12 + 12 (before increment) + 2 (before increment) = 28
        uint ex4 = (b % a) + 3;     // 12 % 2 = 0, so 0 + 3 = 3

        return (ex1, ex2, ex3, ex4);
    }
}
