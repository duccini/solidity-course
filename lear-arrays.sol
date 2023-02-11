// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learnArray {
    uint[] public myArray;

    function addToArray(uint _number) public {
        myArray.push(_number);
    }

    function removeFromArray() public {
        myArray.pop();
    }

    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }
}