// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DurationClause {
    uint256 public CalendarDaysDuration;
    uint256 public immutable DurationLimit;
    address public immutable Owner;
    bool public Active;

    // Constructor to initialize the contract
    constructor(uint256 _initialDuration, uint256 _durationLimit) {
        require(_initialDuration <= _durationLimit, "Initial duration exceeds limit");
        CalendarDaysDuration = _initialDuration;
        DurationLimit = _durationLimit;
        Owner = msg.sender;
        Active = true;
    }

    // Function to set the duration (Only owner can call)
    function SetDuration(uint256 durationInCalendarDays) public {
        require(msg.sender == Owner, "Only the contract owner can modify duration");
        require(durationInCalendarDays <= DurationLimit, "Duration exceeds the allowed limit");
        
        CalendarDaysDuration = durationInCalendarDays;
    }

    // Getter function to return the current duration
    function GetDuration() public view returns (uint256) {
        return CalendarDaysDuration;
    }

    // Getter function to return the duration limit
    function GetDurationLimit() public view returns (uint256) {
        return DurationLimit;
    }
}
