// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireExample{
    uint public minDeposit = 1;

    function deposit() public payable{
        require(msg.value >= minDeposit,"Minimum 1 ETH required!");
    }

    uint public balance;
    function addBalance(uint _amount)public{
        balance+=_amount;
        assert(balance >= _amount);
    }
    mapping(address => uint) public balances;

    function withdraw(uint amount)public{
        if(amount > balances[msg.sender]){
            revert("Insuffient balance!");
        }
        balances[msg.sender]-=amount;
    }
}

