pragma solidity >=0.4.0 <0.7.0;

contract ContentsInsuranceContract {

  struct claim{
      bool valid;
      uint newBalance;
   }
  
  
  event claimValid(bool valid , uint newBalance);  
  mapping (address => uint) public accountBalance;
  
  
  function InsuranceClaim()public payable{
  
      address payable Claimer = address(msg.sender);
      uint value = msg.value;
      uint payedValue = value / 2;
      uint balance;
      uint newBalance = balance + payedValue;

      bool isValid = setValid();
    
      if(isValid=true)
        require(msg.value < payedValue);
         Claimer.transfer(payedValue);

        emit claimValid(isValid, newBalance  );
      
  
  }

    function setValid()public returns(bool){
    return true ;  
  }
  
function getBankBalance() public view returns(uint256 ret) {
        return address(this).balance;
    }


}