// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

//GET FUNDS FROM USERS
//WITHDRAW FUNDS
//SET  A MINIMUM FUNDING VALUE IN USD 5$



contract FundMe{

    uint256 public minimumUSD=5;
    function fund() public payable{
        //ALLOW USERS TO SEND MONEY
        //SET A MIN AMOUNT
        //1.HOW DO WE SEND ETH TO THIS ACOCUNT

        require(msg.value >= minimumUSD,"DIDNT SENT ENOUGH ETH");  //1e18=1ETH=1000000000000=1*10**18

        //what is reverrt
        //undo any actions that have been doen,and send the remainig gas back
    }

    function withdraw() public{}

}