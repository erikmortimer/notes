contract owned {
    address owner;

    // Contract constructor: set owner
    constructor() {
        owner = msg.sender;
    }

    // Access control modifier
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract mortal is owned {
    // Contract destructor
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}

contract Faucet is mortal {
    // Give out ether to anone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 0.1 ether, "Only the ontract owner can call this function");

        // Send the amount to the address that requested it
        //msg.sender.transfer(withdraw_amount);
        require(this.balance >= withdraw_amount, "Insufficient balance in faucet for withdrawal request");
        msg.sender.transfer(withdraw_amount);
    }
    // Accept any incoming amount
    function () public payable {}
}
