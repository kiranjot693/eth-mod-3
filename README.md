[14:14, 23/07/2024] i: }
[14:31, 23/07/2024] i: # Deploy Smart Contract on Hardhat network and access it through Remix IDE

This project is a part of Metacrafters ETH+AVAX course assessment.

In this project, we had to create a custom token using a smart contract, deploy it on the local hardhat network, and use Remix IDE to interact with it.

### Follow the steps to configure the project

#### 1. Create a hardhat Javascript project

Run the following commands to setup the project


npm init -y
npm install --save-dev hardhat
npm install @nomicfoundation/hardhat-toolbox
npx hardhat


Choose the (Javascript) option.

#### 2. Create a local Hardhat network


npx hardhat node


Note the URL and port at which the server is running

#### 3. Deploy the smart contract


npx hardhat run --network localhost scripts/deploy.js


copy the address of the smart contract


#### 4. Remix IDE

In the Remix IDE
- Go to the deploy tab.
- Select the environment as Dev - Hardhat Provider.
- Enter the URL of the Hardhat network in the dialog box.and connect with local host.
- Enter the address in the At Address tab.

npw we will able to tranfer some tokens.
