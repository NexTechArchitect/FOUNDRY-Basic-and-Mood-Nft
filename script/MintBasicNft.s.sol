// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import "../src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant URI = "ipfs://bafybeigd...yourUriHere.json";

    function run() external {
        address nftAddress = vm.envAddress("BASIC_NFT_ADDRESS");

        vm.startBroadcast();
        BasicNft(nftAddress).mintNft(URI);
        vm.stopBroadcast();
    }
}
