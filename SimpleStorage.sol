// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // Declared the Solidity version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    
    uint256 public favouriteNumber; // Default value is 0

    uint256[] public listOfFavouriteNumbers;

    struct Person {
        uint256 myFavouriteNumber;
        string name;
    }

    Person[] public people; // Array to store the list of people

    // Function to add a person to the list
    function personList(uint256 _myFavouriteNumber, string memory _name) public {
        Person memory newPerson = Person(_myFavouriteNumber, _name);
        people.push(newPerson); // Store the person in the array
    }

    // Function to store a favourite number
    function store(uint256 _favourite) public {
        favouriteNumber = _favourite;
        retrieve();
    }

    // Function to retrieve the favourite number
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
}


//0xd9145CCE52D386f254917e481eB44e9943F39138