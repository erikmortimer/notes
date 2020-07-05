pragma solidity ^0.4.22;

contract Faucet {
    address owner;
    
    // Contract constructor: set owner
    constructor() {
        owner = msg.sender;
    }

    // Function Modifier
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    // Contract destructor
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }

    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {

        //Limit withdrawal amount
        require(withdraw_amount <= 0.1 ether);

        //Send the amount to the address that requested it
        msg.sender.transfer(withdraw_amount);
    }

    //Accept any incoming amount
    function () external payable {}

}
