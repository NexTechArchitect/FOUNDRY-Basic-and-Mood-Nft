// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Test.sol";
import "../src/BasicNft.sol";

contract BasicNftTest is Test {
    BasicNft basicNft;
    address USER = address(1);

    function setUp() public {
        basicNft = new BasicNft();
    }

    function testInitialTokenCounterIsZero() public {
        uint256 counter = basicNft.balanceOf(USER); 
        assertEq(counter, 0);
    }
      /minting nft
    function testMintNft() public {
        string memory uri = "ipfs://sample-uri-here.json";

        vm.prank(USER);
        uint256 tokenId = basicNft.mintNft(uri);

        assertEq(tokenId, 0); 
        assertEq(basicNft.ownerOf(0), USER); // USER owns token 0
        assertEq(basicNft.tokenURI(0), uri); // URI is stored correctly
    }

    function testMultipleMintsIncreaseCounter() public {
        vm.prank(USER);
        basicNft.mintNft("ipfs://uri1.json");

        vm.prank(USER);
        basicNft.mintNft("ipfs://uri2.json");

        assertEq(basicNft.ownerOf(1), USER);
    }
}
