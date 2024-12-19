// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // Declared the Solidity version


contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    
    uint256 public favouriteNumber; // Default value is 0

//dyanmic array
    uint256[] public listOfFavouriteNumbers;

    //mapping
    mapping(string => uint256) public nameToFavouriteNumber;

    struct Person {
        uint256 myFavouriteNumber;
        string name;
    }

    Person[] public people; // Array to store the list of people

    // Function to add a person to the list
    
    function personList(uint256 _myFavouriteNumber, string memory _name) public {
        Person memory newPerson = Person(_myFavouriteNumber, _name);
        people.push(newPerson); // Store the person in the array
        nameToFavouriteNumber[_name]=_myFavouriteNumber;
    }

    // Function to store a favourite number
    function store(uint256 _favourite) public {
        favouriteNumber = _favourite;
        retrieve();
    }

    // Function to retrieve the favourite number
    //view,pure
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}


contract StorageFactory{

    //type visbility name

    SimpleStorage public simplestorage;

    function createSimpleStorageContract() public{
        simplestorage=new SimpleStorage();
        //how does the storage contact know what  a simple stotage lookes like
          
    }

}