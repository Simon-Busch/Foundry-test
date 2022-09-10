Installing dependencies with forge


-> this doesn't work with npm but directly with github

ex: forge install openzeppelin/openzeppelin-contracts


## Deploy contract
From localhost :
`yarn add hardhat`
`hardhat init`
`hh node`

Then run on a separate terminal
`forge create StakeContract --private-key HH_PRIVATE_KEY`

On the blockchain:
`forge create StakeContract --private-key PRIVATE_KEY --rpc-url RPC_URL`
