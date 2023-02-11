// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract enumExercise {
    enum shirtColors {WHITE, RED, BLUE}

    shirtColors colorChoice;
    shirtColors constant defaultColor = shirtColors.BLUE;

    function setWhite() public {
        colorChoice = shirtColors.WHITE;
    }

    function getColorChoice() public view returns(shirtColors) {
        return colorChoice;
    }

    function getDefaulColor() public pure returns(shirtColors) {
        return defaultColor;
    }
}