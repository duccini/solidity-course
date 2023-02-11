// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnEnums {
    enum myContracts {contractA, contractB, contractC}
    myContracts currentContract;
    myContracts constant defaultContract = myContracts.contractC;

    function setContractA() public {
        currentContract = myContracts.contractA;
    }

    function getCurrentContract() public view returns(myContracts) {
        return currentContract;
    }

    function getDefaultContract() public pure returns(uint) {
        return uint(defaultContract);
    }
}