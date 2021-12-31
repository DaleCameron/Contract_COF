pragma solidity ^0.8.7;

contract Trump_fool_or_cool {

    bool isCool;
    uint256 take;
    address beneficiary;
    constructor(){
        isCool = true;
        take = 1 ether; //insert currency
        beneficiary = adress; //change to adress
    }


    function toggleValue(bool newVal) public payable{
        require(isCool != newVal);
        require(msg.amount >= take);
        msg.sender.send(msg.amount).to(beneficiary);
        isCool = newVal;
    }
    function setCool() public payabale returns (string){
        toggleValue(true);
        return "Trump is cool!!!";
    }

    function setFool()public payable returns (string){
        toggleValue(false);
        return "Trump is a fool";
    }

    function isCool() public view returns (bool){
        return isCool;
    }

    function setBeneficiary(address newBeneficiary) ownerOnly public payable returns (string){
        beneficiary = newBeneficiary;
        return "Beneficiary is now" + newBeneficiary ;
    }

    function setTake(uint256 newTake) ownerOnly public payable returns (string){
        beneficiary = newBeneficiary;
        return "Take is now" + newTake;
    }
}



