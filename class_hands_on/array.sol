// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArrayExample {
    // 1️⃣ Fixed-size array (size = 5)
    uint256[5] public fixedArray = [1, 2, 3, 4, 5];

    // 2️⃣ Dynamic array
    uint256[] public dynamicArray;

    // 3️⃣ Add elements to the dynamic array
    function addElement(uint256 _num) public {
        dynamicArray.push(_num);
    }

    // 4️⃣ Get length of dynamic array
    function getArrayLength() public view returns (uint256) {
        return dynamicArray.length;
    }

    // 5️⃣ Remove last element from dynamic array
    function removeLastElement() public {
        require(dynamicArray.length > 0, "Array is already empty");
        dynamicArray.pop();
    }

    // 6️⃣ Get element at specific index
    function getElementAt(uint256 index) public view returns (uint256) {
        require(index < dynamicArray.length, "Index out of bounds");
        return dynamicArray[index];
    }

    // 7️⃣ Loop through the dynamic array and sum elements
    function sumArray() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < dynamicArray.length; i++) {
            sum += dynamicArray[i];
        }
        return sum;
    }
}

/*
Deploy the contract.
Call addElement(10), addElement(20), addElement(30).
Call getArrayLength() → Returns 3.
Call getElementAt(1) → Returns 20.
Call sumArray() → Returns 10 + 20 + 30 = 60.
Call removeLastElement(), then getArrayLength() → Returns 2. */


// view function is allowed to access or read the state variable but not allowed to modify it

// pure function is not allowed to read or modify the state variables