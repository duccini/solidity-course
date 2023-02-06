// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learString {
    string favoriteColor = "blue";

    function getFavoriteColor() public view returns (string memory) {
        return favoriteColor;
    }

    function setFaforiteColor(string memory _newColor) public {
        favoriteColor = _newColor;
    }

    function countChar() public view returns (uint) {
        bytes memory stringToBytes = bytes(favoriteColor);
        return stringToBytes.length;
    }
}