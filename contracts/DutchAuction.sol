// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DutchAuction {
    uint256 public constant DURATION = 7 days;
    address payable public immutable seller;
    uint256 public immutable startingPrice;
    uint256 public immutable startAt;
    uint256 public immutable discountRate;
    
    constructor(uint256 _startingPrice, uint256 _discountRate) {
        seller = payable(msg.sender);
        startingPrice = _startingPrice;
        discountRate = _discountRate;
        startAt = block.timestamp;
    }
}
