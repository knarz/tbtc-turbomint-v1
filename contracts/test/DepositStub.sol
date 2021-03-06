pragma solidity >=0.4.22 <0.7.0;

contract DepositStub {
    uint256 internal _lotSize = 10**18;
    uint256 internal _signerFee = 5 * 10**16;

    function lotSizeTbtc() external view returns (uint256){
        return _lotSize;
    }

    function signerFee() external view returns (uint256){
        return _signerFee;
    }

    function setLotSize(uint256 lotSize) public {
        _lotSize = lotSize;
    }

    function setSignerFee(uint256 _fee) public {
        _signerFee = _fee;
    }
}