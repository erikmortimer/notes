
// Our first contract is a faucet!
contract Faucet {
    
    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 100000000000000000);
        msg.sender.transfer(withdraw_amount);
    }

    function () external payable {}
}
