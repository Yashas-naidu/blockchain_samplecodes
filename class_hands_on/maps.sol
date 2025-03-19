// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract maps{
    mapping(address => uint256) public mymap;
    function get(address _add) public view returns(uint256){
        return mymap[_add];
    }
    function set(address _add , uint256 val) public{
        mymap[_add]=val;
    }
    function remove(address _add) public{
        delete mymap[_add];
    }
}