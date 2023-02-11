// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnArrays {
    uint[] changeArray;

    function removeElement(uint _i) public {
        changeArray[_i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }

    function test() public {
        for(uint i = 1; i < 5; i++) {
            changeArray.push(i);
        }
    }

    function getChangeArray() public view returns(uint[] memory) {
        return changeArray;
    }
}