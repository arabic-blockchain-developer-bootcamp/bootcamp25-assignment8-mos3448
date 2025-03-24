// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";    
import "@openzeppelin/contracts/access/Ownable.sol";

// make this contract inherits from: ERC721URIStorage contract
contract Assignment8 is ERC721URIStorage {
    // declare a private uint called _tokenIdCount
    // pass name and symbol of the nft token collection
   constructor() ERC721("name","symbol") {
    
    } 
    uint256 private_tokenIdCounter;
    address private myowner;

    uint256 private_newtokenId;
 


     

    

    // make this function visibility: external
    // pass string json uri parameter
    // restrict this function to be called only by the owner
        // Hint: You can use OpenZeppelin Ownable contract imported above
    

    function mintNFT(string memory jsonuri ) external {
        // call _mint to mint a new nft to the function caller
         require(msg.sender==myowner,"only owner called only");
      uint256  _tokenIdCount = 1;
    uint256 newtokenId=_tokenIdCount;
    
        _mint(msg.sender,newtokenId);
        
        _setTokenURI( newtokenId,jsonuri);
       
         _tokenIdCount++;
        
    }
}


        // set token uri to the token id using _setTokenURI

        // increment token id counter

    


