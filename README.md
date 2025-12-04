
Advanced NFT Collection — BasicNFT & MoodNFT

A dual-contract NFT project built with Foundry, designed to demonstrate clean ERC-721 architecture, on-chain metadata handling, SVG-based dynamic NFTs, and professional scripting workflows.
Both contracts are isolated, testable, and structured for real-world practice in smart contract development and portfolio presentation.


Overview:-

This repository delivers two independent NFT implementations:

BasicNFT:-

A minimal and fully self-contained ERC-721 token that stores image URIs directly on-chain. It represents the foundational structure of an NFT contract, suitable for understanding token IDs, minting flow, metadata retrieval, and wallet interactions.

MoodNFT:-

A more expressive, interactive NFT that renders SVG images on-chain and allows its owner to switch the NFT’s state between “Happy” and “Sad.”
This contract demonstrates dynamic metadata, encoded SVG generation, Base64 utilities, and stateful NFT behavior without relying on IPFS or external storage.


Contract Addresses (Sepolia Testnet)

BasicNFT Contract
0xb41965Bb58aF40c99B1d539e66518bCa16769bf7

MoodNFT Contract
0x01721d6502547faFD3049BE60b1485B12407f58B


Key Concepts Demonstrated:-

● ERC-721 token standard implementation

● Stateful NFT behavior through enums

● SVG-based image rendering stored fully on-chain

● Base64 encoding for metadata packaging

● Data-URI JSON construction for tokenURI responses

● Foundry scripting for deployment and interaction

● Isolated test architecture for validation and reliability

● Clear project structure mirroring production-grade organization



Project Structure:-

src/
 BasicNft.sol
 MoodNft.sol

script/
 DeployBasicNft.s.sol
 MintBasicNft.s.sol
 DeployMoodNft.s.sol
 InteractMoodNft.s.sol

test/
 BasicNftTest.t.sol
 MoodNftTest.t.sol


BasicNFT Summary:-

The BasicNFT contract focuses on delivering a simplified NFT implementation suitable for onboarding into ERC-721 logic. Each mint operation issues a sequential token ID and binds a fixed image URI to the newly created NFT. The structure is intentionally minimal yet practical for understanding wallet ownership, transfers, and metadata formation.


MoodNFT Summary:-

The MoodNFT contract expands NFT behavior into dynamic territory. Instead of static image links, the contract embeds SVG markup directly and encodes metadata using Base64. Each NFT begins in the “Sad” state and can be toggled to “Happy” only by the token owner or an approved operator. This contract illustrates how NFTs can evolve, personalize, or communicate on-chain states purely through logic without external storage.


Purpose and Intended Use:-

This repository provides a compact, production-style demonstration environment for:

● practicing ERC-721 development
● mastering Foundry workflows
● understanding on-chain metadata design
● presenting clean, review-ready smart contract work
● strengthening a professional Web3 development portfolio

The implementation avoids unnecessary complexity while delivering meaningful examples aligned with industry expectations for junior and mid-level smart contract roles.


License:-

This project is released under the MIT License.

Author

NEXTECHARCHITECT
Smart Contract Developer - Solidity, Foundry, Web3 Engineering
