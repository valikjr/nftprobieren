pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("MySamuraiNFT", "MSN") {}

    function mintNFT(address recipient) public returns (uint256) {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);

    
        _setTokenURI(newItemId, "ipfs://bafybeiezrubbhs6hgjtaeu25pquyqbrhry6wc4mmbtxpl32bwpnccmxidq");

        return newItemId;
    }
}
