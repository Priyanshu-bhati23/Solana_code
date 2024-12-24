// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // Declared the Solidity version


import {SimpleStorage,SimpleStorage2} from  "./SimpleStorage.sol";


contract StorageFactory{

    //type visbility name

    SimpleStorage[] public listOfsimplestorageContracts;

    function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorageContract=new SimpleStorage();
        //how does the storage contact know what  a simple stotage lookes like
          listOfsimplestorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber) public {
            //Address
            //ABI-Application binary interface
            SimpleStorage mySimpleStorage=listOfsimplestorageContracts[_simpleStorageIndex];
            mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage=listOfsimplestorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }

}