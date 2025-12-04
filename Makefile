# Global Commands
build:
	forge build

test:
	forge test

snapshot:
	forge snapshot

clean:
	forge clean


# Basic NFT Commands
deploy-basic:
	forge script script/DeployBasicNft.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast

mint-basic:
	forge script script/MintBasicNft.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast


# Mood NFT Commands
deploy-mood:
	forge script script/DeployMoodNft.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast
