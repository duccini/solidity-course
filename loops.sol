// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract loopFor {
    uint [] numbersList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function checkMultiples(uint _num1, uint _num2) private pure returns (bool) {
        if(_num1 % _num2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function checkMultiplesList(uint _number) public view returns (uint) {
        uint count = 0;

        for(uint i = 0; i < numbersList.length; i++) {
            if(checkMultiples(_number, numbersList[i])) {
                count++;
            }
        }

        return count;
    }
}