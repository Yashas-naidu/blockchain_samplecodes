// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract struct_demo{
    struct Ticket{
        uint256 id;
        string eventName;
        address buyer;
        bool isused;
    }
    uint256 public nextTicketId;
    mapping(uint256 => Ticket) public tickets;

    function buyTicket(string memory eventName)public{
        tickets[nextTicketId]=Ticket({
            id : nextTicketId,
            eventName : eventName,
            buyer : msg.sender,
            isused : false
        });
        nextTicketId++;
    }
}