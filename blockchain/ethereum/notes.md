# Blockchain
## Ethereum
    - distributed state machine
    - tracks the state transitions for a general-purpose data store (i.e a store that can hold any data expressible as a key-value tuple)
        - key-value data store holds arbitrary values, each referenced by some key
    - Ethereum has memory that stores both code and data, and it uses the changes over time.
    - Ethereum answers the question of "What if we vould track any arbitrary state and program the state machine to create a world-wide computer operating under consensus?"

    - Key terms to understand and know:
        - P2P Network 
            - Ethereum runs on the Ethereum main network, which is addressable on TCP port 30303, and runs a protocol called DEVp2p
        - Consensus rules 
            - Ethereum's consensus rules are defined in the reference specification, the Yellow Paper
        - Transactions 
            - network messages that include (among other things) a sender, recipient, value, and data payload
        - State machine 
            - Ethereum state transitions are processed by the Ethereum Virtual Machine (EVM), a stack-based virtual machine that executes bytecode (machine-language instructions). EVM programs, called "smart contracts", are written in high-level languages (e.g, Solidity) and compiled to bytecode dfor execution on the EVM
        - Data structures 
            - Ethereum's state is stored locally on each node as a database (usually Google's LevelDB), which contains the transactions and system state in a serialized hashed data structure called a Merkle Patricia Tree.
        - Consensus algorithm
            - Ethereum uses Bitcoin's consensus model, Nakamoto Consensus, whcih uses sequential single-signature blocks, weighted in importance by PoW to determine the longest chain and therefore the current state. However, there are plans to move to a PoS weighted voting system, codenamed Casper, in the near future.
        - Economic security
            - Ethereum currently uses a PoW algorithm called Ethash, but this will ecentually be dropped with the move toPoS at some point in the future
        - Clients
            - Ethereum has several interoperable implementations of the client software, the most porminent of which are Go-Ethereum (Geth) and Parity

    - What does "Turing Completeness" mean??
        - refers to English mathematician Alan Turing, considered the father of computer science
        - he created a mathematical model of a computer consisting of a state machine that manipulates symbols by reading and writing them on sequential memory (resembling an infinite-length paper tape).
        - he went on to provide a mathematical foundation to answer (in the negative) questions about universal computability, meaning whether all problems are solvable
        - he proved "halting problem"
            - whehter it is possible, given an arbitrary program and its input, to determine whether the program will eventually stop running) is not solvable
        - he further defined a system to be Turing complete if it can be used to simulate any Turing machine. Such a system is called a Universal Turing machine (UTM)

    - Ethereum's ability to execute a stored program, in a state machine called the Ethereum Virtual Machine, while reading and writing data to memory makes it a Turing-complete system and therefore a UTM.
    - Ethereum can compute any algorithm that can be computed by any Turing machine, given the limitations of finite memory.
    - Ethereum's groundbreaking innovation is to combine the general-purpose computing architecture of a stored-program computer with a decentralized blockchain, thereby creating a distributed single-state (singleton) world computer.
    - Ethereum programs run "everywhere", yet produce a common state that is secured by the rules of consensus.

    - How does Ethereum constrain the resources used by a smart contract if it cannot predict resources use in advance?
        - To answer this challenge, Ehtereum introduces a metering machanism call "gas"
        - Gas is the mechanism Ethereum uses to allow Turing-complete computation while limiting the resources that any program can consume
        - It can only be purchased as part of a transacction, and can only be bought with Ether
            - Ether needs to be sent along with a transaction and it needs to be explicitly earmarked for the purchase of gas

    - From General-Purpose Blockchains to Decentralized Applications (DApps)
        - DApps - a smart contract and a web user interface.
            - web application that is built on top of open, decentralized, peer-to-peer infrastructure services.
            - DApps is composed of at leaser:
                - Smart contracts on a blockchain
                - A web frontend user interface
            - In addition, many DApps include other decentralized componenets, such as:
                - A decentralized (P2P) storage protocol and platform
                - A decentralized (P2P) messaging protocol and platform
        - DApps are meant to take the World Wide Web to its next natural evolutionary stage, introducing decentralization with peer-to-peer protocols into every aspect of a web application.
            - Web3 = third "version" of the web
        - The web3.js library also includes an interface to a P2P storage network call Swarm and a P2P messaging service called Whisper


### Ethereum Basics
    - Wei, smallest unit possible used represent a unit of ether
    - Ethereum Wallet - a software application that helps you manage your ethereum acount. Gateway into the Ethereum system
        - Holds your keys and can create and broadcast transactions on your behalf.
    - Creating my own TEST wallet
        - Backup Phrase: upon trip estate sad whip little label turn company excuse narrow cereal
    - Registering a contract on the blockchain involves creating a special transaction whose destination is the address 0x0000000000000000000000000000000000000 also known as the zero address
    - zero address is a special address that tells the Ethereum blockchain that you want to register a contract.

### Ethereum Client
    - ethereum client is a software application that implements the Ethereum specification and communicates over the peer-to-peer network with other Ethereum clients.
    - While these different clients are implemented by different teams and in different programming langauges, they all "speak" the same protocol and follow the same rules.

### Ethereum Networks
    - variety of Ethereum-based networks that largely conform to the formal specification defined in the Ethereum Yellow Paper, but which may or may not interoperate with each other
        - Examples: Ethereum, Ethereum Classic, Ella, Expanse, Ubiq, Musicoin, and many others
    - There are six main implementations of the Ethereum protocol, written in six different languages:
        - Parity - Rust
        - Geth - Go
        - cpp-ethereum - C++
        - pyethereum - Python
        - Mantis - Scala
        - Harmony - Java
    
    - Should I run a full node?
        - health, resilience and xensorship resistance of blockchains depend on them having many independently operated and geographically dispersed full nodes
        - Each full node can help other new nodes obtain the block data to bootstrap their operation, as well as offering the operator an authoritative and independent verification of all transactions and contracts.
        - running a full node will incur a cost in hardware resources and bandwidth.
            - Download 80-100 GB of data and store it on local hard drive
        - You don't need a full node running on a live mainnet network
            - You can do almost everything you neeed to do with a testnet node (which connects you to one of the smaller public test blockchains), with a local private blockchain like Ganache, or with a cloud-based Ethereum client offered by a service provider like Infura
        - You could do a remote clients to connect to existing networks, such as your own full node, a public blockchain, a public or permissioned (proof-of-authority) testnet, or a privatre local blockchain.
        - In practice, you will likely use a remote client such as MetaMask, Emerald wallet, MyEtherWallet, or MyCrypto as a convenient way to switch between all of the different node options.
        - *Ethereum remote clients* - do not validate block headers or transactions, they entirely trust a full client to give them access to the blockchain, and hence lose significant security and anonymity guarantees.

        - Advantages and Disadvantages
            - Adv
                - Supports the resilience and censorship resistance of Ethereum-based networks
                - Authoritatively validates all transactions
                - Can interact with any contract on the public blockchain without an intermediary
                - Can directly deploy contracts into the public blockchain without an intermediary
                - Can query (read-only) the blockchain status (accounts, contracts, etc.) offline.
                - Can query the blockchain without letting a third party know the information you're reading
            - Dis
                - Requires significant and growing hardware and bandwidth resources
                - May require seveeral days to fully sync when first started
                - Must be maintained, upgraded, and kept online to remain synced
    - Public Testnet Advantages and Disadvantages
        - Advantages
            - Testnet node needs to sync and store much less data - about 10 GB depending on the network
            - Testnet node can sync fully in a few hours.
            - Deploying contracts or making transactions requires test ether, which has no value and can be acquired for free from several "faucets"
            - Testnets are public blockchains with many other users and contracts, running "live"
        - Disadvantages
            - Can't use "real" money on a testnet; it runs on test ether. Consequently, you can't test security against real adversaries, as there is nothing at stake
            - There are some aspects of a public blockchain that you cannot test realistically on a testnet.
                - Example: transaction fees, although necessary to send trasactions, are not a consideration on a testnet, since gas is free. Further, the testnets do not experience network congestion like the public mainnet sometimes does.
    - Local Blockchain Simulation Advantages and Disadvantages
        - For many testing purposes, the best option is to launch a single-instance private blockchain. Ganache (formerly named testrpc) is one of the most popular local blockchain simulations that you can interact with, without any other participants. It shares many of the advantages and disadvantages of the public testnet, but also has some differences
            - Adv
                - No syncing and almost no data on disk; you mine the first block yourself
                - No need to obtain test ether; you "award" yourself mining rewards that you can use for testing
                - No other users, just you
                - No other contracts, just the ones you deploy after you launch it
            - Dis
                - Having no other users means that it doesn't behave the same as a public blockchain. There's no competition for transaction space or sequencing of transactions
                - No miners other than you means that mining is more predictable; therefore, you can't test some scenarios that occur on a public blockchain
                - Having no other contacts means you have to deploy everything that you want to test, including dependencies and contact libraries
                - You can't recreate some of the public contracts and their addresses to test some scenarios (e.g the DAO contract)
    - Running an Ethereum Client
        - If time and resources are available, you should attempt to run a full node, even if only to learn more about the process.

### Cryptography
    - important to Ethereum and blockchains alike
    - branch of mathematics used extensively in computer security
        - Cryptography in greek means "secret key"
    - can be used to prove knowledge of a secret without revealing that secret (digital signature) or to prove the authenticity of data (with digital fingerprints, also known as "hashes")
    - going over public key cryptography (PKC), which is used to control ownership of funds, in the form of private keys and addresses

    - Keys and Addresses
        - Ethereum has two different types of accounts:
            - externally owned accounts (EOAs) and contracts
            - Ownership of ether by EOAs is established through digital private keys, Ethereum addresses, and digital signatures
            - Private keys are at the heart of all user interaction with Ethereum
            - Account addresses are derived directly from private keys: a private key uniquely determines a single Ethereum address, also known as an account
            - Private keys are not used directly in the Ethereum system in any way
                - Never transmitted or stored on Ethereum
            - Access and control of funds is achieved with digital signatures, which are also created using the private key.
            - Ethereum transactions require a valid diital signature to be included in the blockchain
            - Digital signatures in Ethereum transactions prove the true owner of the funds, if the private key is stored securely and not stolen
        - In public key cryptography-based systems, keys come in pairs consisting of a private (secret) key and a public key
        - Public key is similar to a bank account number
        - Private key as similar to the secret PIN
            - This provides control over the whole account
            - They are rarely seen by Ethereum users as they are mananged by the Ethereum wallet
        - In the payment portion of an Ethereum transaction, the intended recipient is represented by an Ethereum address, which is used in the same way as the beneficiary account details of a bank transfer
        - An Ethereum address for an EOA is generated from the public key portion of a key pair
            - Not all Ethereum addresses represent public-private key pairs; can also represent contracts and are not backed by private keys

    - Public Key Cryptography and Cryptocurrency
        - asymmetric cryptography - a core part of modern-day information security
        - Public key cryptography uses unique keys to secure 
        - A more advanced category of mathematical functions that is useful in cryptography is based on arithmetic operations on an elliptic curve
        - In elliptic curve arithmetic, multiplication modulo a prime is simple but divsion (the inverse) is practically impossible.
            - This is called the discrete logarithm problem and there are currently no known trapdoors
        - Elliptic curve cryptography is used extensively in modern computer systems and is the basis of Ethereum's use private keys and digital signatures.
        
        - In Ethereum, we use public key cryptography (asymmetric cryptography) to create the public-private key pair
        - They are a "pair" because the public key is derived from the private key
        - Private key controls access by being the unique piece of information needed to create digital signatures
            - Digital signatures are required to sign transactions to spend any funds in the account
                - Also used to authenticate owners or users of contracts
        - Digital signature
            - created to sign any message
            - For Ethereum transactions, the details of the transaction itself are used as the message.
            - The mathematics of cryptography, elliptic curve cryptography, provides a way for the message (transaction details) to be combined with the private key to create a code that can only be produced with knowledge of the private key
            - Ethereum transaction basically a request to access a particular account with a particular Ethereum address.
            
        - Elliptic curve mathematics means that anyone can verify that a transaction is valid, by checking that the digital signature matches the transaction details and the Ethereum address to which access is being requested
            - Verification doesn't involve the private key at all; that remains private
            - The verification process determines beyond doubt that the transaction could have only come from someone with the private key that corresponds to the public key behind the Ethereum address.
                - This is the magic of public key cryptograpy

    - Private keys
        - a simple number pucked at random.
        - Ownership and control of the private key is the root of user control over all funds associated with the corresponding Ethereum address, as well as access to contracts that authorize that address.

        - Generating a private key from a random number
            - find a secure source of entropy(randomness)
            - Creating a Ethereum private key involves picking a number between 1 and 2^256 
        - A private key can be converted into a public key, but a public key cannot be converted back into a private key, because the math only works one way
        
        - Elliptic Curve Libraries
            - couple of implementations of the secp256k1 elliptic curve that are used in cryptocurrency-related projects:
                - OpenSSL
                - libsecp256k1

    - Cryptographic hash functions
        - used throughout Ethereum
        - they are part of the transformation of Ethereum public keys into addresses
        - also be used to create digital finderprints, which aid in the verification of data

        - hash function - any function that can be used to map data of arbitrary size to data of fixed size
            - input to hash function is called pre-image, the message, or simply that input data
        - Cryptographic hash function is a one-way hash function that maps data of arbitrary size to a fixed-size of bits


# Solidity Notes
    - view keyword means that functions will not modify state of contract, i.e not modify variables, not emit events, etc.
    - public and private, external and internal
        - public and private refer to using functions inside or outside of a contract
        - internal is the same as private, except that it's also accessible to contacts that inherit from this contract
        - external is similar to public, except that these functions can ONLY be called outside the contract

    - Immutability of Contracts
        - Can never modify a contract once it is deployed onto the blockchain
        - it often makes sense to have functions that will allow you to update key portions of the DApp
        - common practice to make contracts Ownable - meaing they have an owner who has special privileges

    - Gas
        - Users but gas with Ether, so your users have to spend ETH in order to execute functions on you DApp
        - each individual operation has a gas cost based roughly on how much computing resources will be required to perform that operation
            - ex: writing to storage is much more expensive than adding two integers
        - code optimization is much more important in Ethereum than in other programming languages

        - struct packing to save gas
            - if you have multiple uints inside a struct, using a smaller-sized uint whem possible will allow Solidity to pack these variables together to take up less storage
            - uint 32 a, b and uint c is less than uint a, b, c
    - Time units
        - the variable now will return the current unix timestamp of the latest block.
        - Unix time is traditionally stored in a 32-bit number, but it'll lead to the "Year 2038" problem
            - when 32-bit unix timestamps will overflow and break a lot of legacy systems.
    - View functions don't cost gas
        - when they're called externally by a user
        - this is because view functions don't actually change anything on the blockchain, they only read the data
    - Storage is expensive
        - every thime you write or change a piece of data, it's written permanently to the blockchain.
        - In order to keep costs down, you want to avoid writing data to storage except when absolutely necessary.
        - Sometime this involves seemingly inefficient programming logic
            - rebuilding an array in memory every time a function is called instead of simply saving that array in a variable for quick lookups
        - a naive implementation of iterating through an array would be to use a mapping
            - since we would have to push, remove, shift, and reduce the array in order to do something like a transfer function
                - it would be extremely expensive gas-wise
            - best solution is to use a for-loop to iterate the array and build an array that belong to the specific owner for example


