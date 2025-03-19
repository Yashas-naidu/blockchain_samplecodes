// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicMath{
    int256 public sum;
    uint256 public product;
    bool public isEven;

    function add(int256 a,int256 b) public returns(int256){
        sum = a+b;
        return sum;
    }
    function multiply(uint256 a,uint256 b) public returns(uint256){
        product = a*b;
        return product;
    }

    function iseven(uint256 num) public returns(bool){
        isEven = (num%2==0);
        return isEven;
    }

}