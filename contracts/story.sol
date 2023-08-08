// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract story is  ERC721A {
    address public owner;

    // Maximum number of tokens that can be minted
    uint256 public maxQuantity = 5;

    // Base url for the nfts
    string baseUrl =
        "https://gateway.pinata.cloud/ipfs/QmdqMEuXUShRbtcLV8tyHtaKbvL9cCULEmTtWSPE3pXsVy/";

    // URL for the prompt description
    string public prompt = "A college love story phase";

    constructor() ERC721A("college_love", "CLT") {
        owner = msg.sender;
    }

    // Modifier that only allows the owner to execute a function
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action!");
        _;
    }

    // Function to mint NFT which only owner can perform
    function mint(uint256 quantity) external payable onlyOwner {
        require(
            totalSupply() + quantity <= maxQuantity,
            "You can not mint more than 5"
        );
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

    // Return the URL for the prompt description
    function promptDescription() external view returns (string memory) {
        return prompt;
    }
    // Function to update the base URL for the NFTs
    function updateBaseURL(string calldata newBaseURL) external onlyOwner {
        baseUrl = newBaseURL;
    }

// Function to update the prompt description
    function updatePrompt(string calldata newPrompt) external onlyOwner {
            prompt = newPrompt;
    }
}

