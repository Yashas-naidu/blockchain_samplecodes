// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DeFiExercise {
    uint public stakingWallet = 10; // Initialize stakingWallet to 10

    constructor() {}

    function airDrop() public view returns (uint) {
        uint wallet = stakingWallet; // Create a local variable wallet

        // Decision-making logic
        if (wallet == 10) {
            wallet += 10; // If wallet equals 10, add 10 more
        } else {
            wallet += 1;  // Otherwise, add only 1
        }

        return wallet; // Return the updated wallet value
    }
}
