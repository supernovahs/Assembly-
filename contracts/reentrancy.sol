pragma solidity ^0.8.10;

contract Reentrancy {
    mapping(address => uint256) public s_balances;

    function deposit() external payable {
        s_balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) external {
        (bool success, ) = msg.sender.call{value: amount}("");
        s_balances[msg.sender] -= amount;
    }

    fallback() external payable {
        s_balances[msg.sender] += msg.value;
    }

    receive() external payable {
        s_balances[msg.sender] += msg.value;
    }
}
