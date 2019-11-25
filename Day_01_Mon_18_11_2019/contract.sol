

pragma solidity >=0.4.0 <0.7.0;

contract ContentsInsuranceContract {

  
  event claimValid(bool valid);  
  bool valid;
  
  
  function InsuranceClaim()public payable returns(bool){
  
      address payable Claimer = address(msg.sender);
      uint value = msg.value;
      uint payedValue = value / 2;
      
      setValid(true);
    
      if(valid)
        Claimer.transfer(payedValue);
    
      emit claimValid(valid);
      return valid;
  
  }

    function setValid(bool boo)public{
    valid = boo ;  
  }
  
function getBankBalance() public view returns(uint256 ret) {
        return address(this).balance;
    }


}