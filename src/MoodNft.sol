// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";

contract MoodNft is ERC721 {
    error MoodNft_cantFlipMoodIfNotOwner(
        address owner,
        address caller,
        uint256 tokenId
    );

    uint256 private s_tokenCounter;
    string private s_sadSvgImageUri;
    string private s_happySvgImageUri;

    enum Mood {
        SAD,
        HAPPY
    }

    mapping(uint256 => Mood) private s_tokenIdToMood;

    constructor(
        string memory sadSvgImageUri,
        string memory happySvgImageUri
    ) ERC721("MoodNft", "MOOD") {
        s_tokenCounter = 0;
        s_sadSvgImageUri = sadSvgImageUri;
        s_happySvgImageUri = happySvgImageUri;
    }

    function mintNft() public returns (uint256) {
        uint256 newTokenId = s_tokenCounter;
        _safeMint(msg.sender, newTokenId);
        s_tokenIdToMood[newTokenId] = Mood.SAD;
        s_tokenCounter++;
        return newTokenId;
    }
    function flipMood(uint256 tokenId) public {
        if (msg.sender != ownerOf(tokenId)) {
            revert MoodNft_cantFlipMoodIfNotOwner(
                ownerOf(tokenId),
                msg.sender,
                tokenId
            );
        }

        if (s_tokenIdToMood[tokenId] == Mood.SAD) {
            s_tokenIdToMood[tokenId] = Mood.HAPPY;
        } else {
            s_tokenIdToMood[tokenId] = Mood.SAD;
        }
    }
    function _baseURI() internal pure override returns (string memory) {
        return "data:application/json;base64,";
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        string memory imageUri = s_sadSvgImageUri;
        if (s_tokenIdToMood[tokenId] == Mood.HAPPY) {
            imageUri = s_happySvgImageUri;
        }

        bytes memory json = abi.encodePacked(
            '{"name":"Mood NFT",',
            '"description":"An NFT that reflects the owner\'s mood.",',
            '"attributes":[{"trait_type":"moodiness","value":100}],',
            '"image":"',
            imageUri,
            '"}'
        );

        return string(abi.encodePacked(_baseURI(), Base64.encode(json)));
    }
}
