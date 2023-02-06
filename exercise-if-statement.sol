pragma solidity >= 0.7.0 < 0.9.0;

contract AirDrop {

    function airDrop() public view returns (uint) {
        uint stakingWallet = 20;

        if(stakingWallet >= 10) {
            stakingWallet *= 2;
            return stakingWallet;
        } else {
            stakingWallet++;
            return stakingWallet;
        }
    }
}