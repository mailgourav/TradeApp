pragma solidity >=0.4.22 <0.6.0;

interface TradeInterface
{
    function submitTrade(bytes32[] calldata _bytesData , uint[] calldata _intData, address[] calldata _addressData) external ;
    function getTrade(bytes32 tradeId) external returns (bytes32[] memory _bytesData, uint[] memory _intData, address[] memory _addressData);
}
