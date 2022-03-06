//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

// Contract Inheritance is Contract
contract StorageFactory is SimpleStorage {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // To interact with another contract, we need the contract ABI and Contract Address
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGetFavouriteNumber(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();
    }
}
