// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Comparison {
    uint public a = 323;
    uint public b = 54;

    function compare() public view returns (string memory) {
        require(a <= b, "This comparison is false!");
        return "Comparison is true!";
    }
}
