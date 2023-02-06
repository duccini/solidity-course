// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract Base {
    uint data;

    constructor (uint d) {
        data = d;
    }
}

contract Derived is Base (5) {
    function getData() public view returns (uint) {
        return data;
    }
}