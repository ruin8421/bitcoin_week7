// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStaking {
    mapping(address => uint256) public stakedBalance;

    event Staked(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    // 1. 스테이킹 (ETH를 직접 받는 방식 예시)
    function stake() public payable {
        require(msg.value > 0, "Amount must be greater than 0");
        stakedBalance[msg.sender] += msg.value;
        emit Staked(msg.sender, msg.value);
    }

    // 2. 인출
    function withdraw(uint256 _amount) public {
        require(stakedBalance[msg.sender] >= _amount, "Insufficient balance");
        stakedBalance[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit Withdrawn(msg.sender, _amount);
    }

    // 3. 잔액 확인
    function getBalance(address _user) public view returns (uint256) {
        return stakedBalance[_user];
    }
}
