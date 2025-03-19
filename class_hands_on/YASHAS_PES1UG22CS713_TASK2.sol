// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathUtils {
    
    function power(uint256 base, uint256 exponent) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exponent; i++) {
            result *= base;
        }
        return result;
    }

    function factorial(uint256 n) public pure returns (uint256) {
        require(n >= 0, "Factorial is not defined for negative numbers");
        if (n == 0) {
            return 1;
        }
        uint256 result = 1;
        for (uint256 i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function modExp(uint256 base, uint256 exponent, uint256 modulus) public pure returns (uint256) {
        require(modulus != 0, "Modulus cannot be zero");
        uint256 result = 1;
        base = base % modulus;
        
        while (exponent > 0) {
            if (exponent % 2 == 1) {
                result = (result * base) % modulus;
            }
            exponent = exponent / 2;
            base = (base * base) % modulus;
        }
        
        return result;
    }

    function gcd(uint256 a, uint256 b) public pure returns (uint256) {
        if (b == 0) {
            return a;
        }
        return gcd(b, a % b);
    }

    function isPrime(uint256 num) public pure returns (bool) {
        if (num < 2) {
            return false;
        }
        if (num == 2 || num == 3) {
            return true;
        }
        if (num % 2 == 0 || num % 3 == 0) {
            return false;
        }
        for (uint256 i = 5; i * i <= num; i += 6) { 
            if (num % i == 0 || num % (i + 2) == 0) {
                return false;
            }
        }
        return true;
    }
}
