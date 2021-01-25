pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Tasks.sol";

contract TestTasks {
 // The address of the task contract to be tested
 Tasks chore = Tasks(DeployedAddresses.Tasks());

 //Test User can accept chore

 function testUserCanAcceptChore() public{
   uint returnedId=chore.task(expectedChoreId);

 // The id of the chore that will be used for testing
 uint expectedChoreId = 8;
 
 assert.equal(returnedId, expectedChoreId, "Accept the expected task should match what is returned");
 }

 //Testing Retreiveal of a single chore's pwner.
function testGetkidsAddressbyChoreId() public{

address kids =chore.kids(expectedChoreId);

Assert.equal(kids, expectedKid, "Owner of the expected  chore should be this contract");
}

//Testing retrieval of all chore owners

function testGetKidsAddressByChoreIdInArray() public{
  //Store kids in memory rather than contract's storage
  address[16] memory kids = chore.getKids();

  Assert.equal(kids[expectedChoreId], expectedKid, "Owner of the expected pet should be this contract");

}

//The ID of the chore that will be used for esting

uint expectedChoreId = 3;

//The expected owner of accepted chore is this contract

address expectedKid = address(this);

}
