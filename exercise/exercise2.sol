// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FinalExercise {
    uint public a = 300;
    uint public b = 12;
    uint public f = 47;

    constructor() {}

    function finalize() public view returns (uint) {
        uint d = 23;
        
        // Bonus condition: Check if 'a' is greater than or equal to 'a' and 'b' is less than 'f'
        if (a >= a && b < f) {
            d *= d; // d = d * d
            d -= b; // d = d - b
        }
        
        return d;
    }
}
