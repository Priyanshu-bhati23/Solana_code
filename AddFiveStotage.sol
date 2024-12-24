//SPDX-License-Identifier:MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage { 
    //inheritance
    //+5
    //virtual override

    function store(uint _newNumber) public override {
         favouriteNumber = _newNumber + 5;
    }
    

}
