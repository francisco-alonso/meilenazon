// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Meilenazon {
    string public name;
    address public owner;
    struct Item {
        uint256 id;
        string name;
        string category;
        string image;
        uint256 cost;
        uint256 rating;
        uint256 stock;
    }

    mapping(uint256 => Item) public items;

    constructor() {
        owner = msg.sender; // state variable to get th person who is deploying the smart contract qnd signing the transaction
    }

    // List products

    function list(
        uint256 _id,
        string memory _name,
        string memory _category,
        string memory _image,
        uint256 _cost,
        uint256 _rating,
        uint256 _stock
    ) public {
        Item memory item = Item(
            _id,
            _name,
            _category,
            _image,
            _cost,
            _rating,
            _stock
        );

        items[_id] = item;
    }
}
