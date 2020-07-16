What is a dapp?
    - application that is mostly or entirely decentralized
        - Backend software (application logic)
        - Frontend software
        - Data storage
        - Message communications
        - Name resolution
    - Each can be somewhat centralized and somewhat decentralized
    - Frontend can be developed as a web app that runs on a centralized server or as a mobile app that runs on your device
    - Backend and storage can be on private server and proprietary databases, or you can use a smart contract and P2P storage
    - Advantages to creating a DApp
        - Resiliency
            - logic is controlled by the smart contract, DApps backend would be fully distributed and managed on a blockchain platform
        - Transparency
            - On-chain nature of DApp allows everyone to inspect the code and be more sure about its function.
        - Censorship resistance
            - As long as a user has access to an Ethereum node (running one if necessary), the user will always be able to interact with a Dapp without interference from any centralized control
            - No service provider, or even the owner of the smart contract, can alter the code once it is deployed on the network
    - When creating a Dapp is it important to understand the computationally hard backend tasks as it will be very costly
        - Needs to be kept as minimal as possible
        - Important to understand which aspects of the app need a trusted and decentralized execution platform
    - Data storage
        - Since there are high gas costs and currently low block gas limit, smart contracts are not well suited to storing or processing large amounts of data
            - utilize off-chain data storage service = store the bulky data off the Ethereum chain, on a data storage platform
            - That could be cetnralized in like a typical cloud database, decentralized and stored on a P2P platform such as the IPFS, or Ethereum's own Swarm platform
            - Decentralized P2P storage is ideal for storing and distributing large static assets such as images, video, and resources of the application's frontend (HTML, CSS, Javascript, etc.)
        - IPFS
            - Inter-Planetary File System (IPFS)
                -  decentralized content-addressable storage system that distributes stored objects among peers in P2P network.
                - "Content addressable" = each piece of content (file) is hashed and the hash is used to identify that file.
                    - You can then retrieve any file from any IPFS node by requresting it by its hash
                - aims to replace HTTP as the protocol of choice for delivery of web application
            - Swarm
                - another content-addressable P2P storage system
                - created by the Ethereum Foundation, part of the Go-Ethereum suite of tools
        - Decentralized Message Communications Protocols
            - being able to exchange messages between applications, between different instances of the application, or between users of the application
            - most notable P2P messaging protocol for DApps is Whisper, part of Ethereum Foundation's Go-Ethereum suite of tools

A Basic DApps Example: Auction DApp
    - Aucion DApp allows a user to register a "deed" token, which represents some unique asset, such as a house, a car, a trademark, etc.
    - Once token has been registered, ownership of the token is transferred to the Auction DApp, allowing it to be listed for sale
    - once an auction is finalized, the deed token ownership is transferred to the winner of the auction

Main components of our Auction Dapp
    - Smart contract implementing ERC721 non-fungible "deed" tokens (DeedRepository)
    - Smart comtract implementing an auction (AuctionRepository) to sell the deeds
    - A web frontend using the Vue/Vuetify Javascript framework
    - web3.js library to connect to Ethereum chains (via MetaMask or other clients)
    - A Swarm client, to store resources such as images
    - A Whisper client, to create per-auction chat rooms for all participants

