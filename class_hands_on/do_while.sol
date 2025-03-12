// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LoopExamples {
    
    // Function using a while loop to count down to zero
    function countDown(uint start) public pure returns (uint) {
        uint count = start;
        while (count > 0) {
            count--;
        }
        return count; // Always returns 0
    }

    // Function using a do-while loop to count down to zero
    function doWhileExample(uint start) public pure returns (uint) {
        uint count = start;
        if (start > 0) {
            do {
                count--;
            } while (count > 0);
        }
        return count; // Always returns 0
    }
}
