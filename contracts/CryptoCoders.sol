// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract CryptoCoders is ERC721, ERC721Enumerable {

    string[] public coders;

    constructor() ERC721("CryptoCoders", "CCS"){
        
    }

    function mint(string memory coder) public {
        // nft 권리와 함께 들어갈 이름
        coders.push(coder);
        // coders가 어디에 있는지 찾기
        uint _id = coders.length - 1;
        _mint(msg.sender, _id);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}