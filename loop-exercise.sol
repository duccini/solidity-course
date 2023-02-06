// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract MakeUnionArray {
    uint[] longList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];

    uint[] numbersList = [1, 34, 4, 56];

    //uint[] unionArray;

    function createUnioArray() public view returns (uint) {
        uint[] storage unionArray;


        for(uint i = 0; i < numbersList.length; i++) {
            for(uint j = 0; j < longList.length; j++) {
                if(numbersList[i] == longList[j]) {
                    unionArray.push(numbersList[i]);
                }
            }
        }

        return unionArray.length;
    }
}