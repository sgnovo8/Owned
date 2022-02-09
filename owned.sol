pragma solidity >=0.7.0 <0.9.0;

contract Owned {
  address public owner;
  
  // constructor will start
  // 
  
  constructor() {
    owner = msg.sender;
  }
  
  // set
  
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }
  
  function transferOwnership(address newOwner) public onlyOwner {
    owner = newOwner;
    
  }

}
