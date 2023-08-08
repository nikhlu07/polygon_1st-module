# College Love Phase NFT Collection

An ERC721-based NFT collection inspired by the nostalgic moments of a college love story phase.

## Description

The "College Love Phase NFT Collection" project presents a unique and heartfelt collection of NFTs, each capturing a special moment from a college love story phase. These NFTs are designed to evoke nostalgia and capture the essence of youthful romance. The collection is implemented using the ERC721 standard on the Ethereum blockchain.

## Getting Started

### Installing

1. Download or clone the project repository from [GitHub](https://github.com/nikhil/college-love-nfts).
2. Navigate to the project folder using your terminal or command prompt.

### Modifications

- In the `.env` file, provide your wallet private key where required: `PRIVATE_KEY= 'your wallet private key'`.

### Executing Program

 - Run the following command to compile the project:
   npx hardhat compile
 - Deploy the ERC721 contract to the Goerli Ethereum Testnet:
'npx hardhat run scripts/deploy.js --network goerli'
NOTE: After deploying, copy the generated contract address into contractAddress.js (stored in the metadata folder) and also in batchMint.js (stored in the scripts folder).

 - Batch Mint NFTs:
'npx hardhat run scripts/batchMint.js --network goerli'
The script will mint the specified number of NFTs and assign them to your address.

 - Approve and Deposit NFTs to Polygon Mumbai:


'npx hardhat run scripts/approveDeposit.js --network goerli'
## Authors
Nikhil
