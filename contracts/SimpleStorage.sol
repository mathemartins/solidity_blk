// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    // initializes to 0
    uint256 public favouriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People public person = People({favouriteNumber : 2, name: "Martins"});
    People[] public crew;
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        crew.push(People({favouriteNumber: _favouriteNumber, name: _name}));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }

}
