pragma solidity >=0.4.22 <0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

contract TBTCTokenStub is ERC20 {
 
    constructor()
        ERC20("Trustless bitcoin", "TBTC")
    public {
        // solium-disable-previous-line no-empty-blocks
    }

    function mint(address _account, uint256 _amount) public returns (bool) {
        _mint(_account, _amount);
        return true;
    }

    function zeroBalance() public {
        uint256 balance = balanceOf(msg.sender);
        if (balance > 0){
            _burn(msg.sender, balance);
        }
    }
}
