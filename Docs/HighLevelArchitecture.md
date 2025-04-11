GlobalBank is a Banking system built as a Blockchain.
A deploment-permissioned Chain
Its archetecture comprises of 3 Major layers:

- UI (android and iOS App) / Web
- Smart contract Layer
- Blockchain Layer

## UI/UX Layer
GlobalBank is an Android / iOS app with an overly simplified and intuitive design giving a feel of traditional Web2 Banking app.
Its an email-fingerprint Auth app.
Abstracts away complexities of privatekey management whereby the each email-biodata accesses a unique underlying Smart contract  account /wallet  (just like @safe) belonging to a User.
User performs Tx via this UI





## Smart Contract Layer
the following contracts will be deployed:
- LocalStablecoin Factory -> A factory for deploying stablecoin of each country's local currency.
- Cryptocurrency Factory -> A factory for deploying Wrapped pegged crypto currency.
- Price feed -> A price feed providing the real time price of all local currency.
- Swapper (GLB <-> Currency) -> A swapper contract for swapping btw GLB(Native Token) & local assets. onchain
- ChainAdmin -> A contract as admin with privileged duties eg: Issuance and withdrawal of licence to deploy, trigger factories to deploy.
- InstitutionalAccountFactory.sol -> Deploy Institutional Accounts (This is a future feature ie V2)
- UserAccountFactory.sol -> Deploys a user's account (a smart contract) which actually holds the funds. By implmenting this system, Private Key mgt is abstracted away as this Smart Contract is the actual user account interacted with through the UI.

## Blockchain Layer
It is important to highlight a significant diff in this GlobalBank Chain:

IT IS DEPLOYMENT-RESTRICTED.

YES! unlike any other Blockchain.
This is a Banking app and not just a chain anyone can deploy memcoins. GO to Ethereum! 
Imagine anyone being able to deploy financial tools u can directly acces right into your Web2 Banking App. No. Its a Sacred Chain.

This is an extremely efficient blockchain written in Rust or Go. Is of extremely High Latency and Throughput given that the potential amount of transactions to be processed (sent from worldwide) can be ridiculously high. Hence its design is intended to be extremely robust and crash proof. 
Actually the most robust blockchain on earth. 

Native token Is GLB whic can be swapped to and fro any asset within the App

Consensus Mechanism is Yet TBD.


## Significant Challenges so far
- Funding as this ZK-based app is really Expensive to build.
- Handling Pricefeeds for all local assets.
- Onboarding World class ZK engineers