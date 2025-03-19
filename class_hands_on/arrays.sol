// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Array{
    uint[] public array = [0,1,2,3];
    function print() public view returns(uint){
        return array.length;
    }
    function setval(uint value,uint index)public{
        // array.push(value);
        require(index < array.length,"Index out of bound");
        array[index] = value;
    }
    function popper() public {
        array.pop();
    }
    function deleter(uint index) public{
        require(index < array.length,"Index out of bound");
        for(uint i = index ;i<array.length-1;i++)
        {
            array[i]=array[i+1];
        }
        array.pop();
    }

    function printer() public view returns(uint[] memory){
        return array;
    }
}