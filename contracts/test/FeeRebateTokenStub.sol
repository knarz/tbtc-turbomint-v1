pragma solidity >=0.4.22 <0.7.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FeeRebateTokenStub is ERC721 {

    constructor()
        ERC721("Fee Rebate Token", "FRT")
    public {
        // solium-disable-previous-line no-empty-blocks
    }

    function mint(address _to, uint256 _tokenId) public {
        _mint(_to, _tokenId);
    }

    function exists(uint256 _tokenId) public view returns (bool) {
        return _exists(_tokenId);
    }
}
