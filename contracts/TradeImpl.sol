pragma solidity >=0.4.22 <0.6.0;

import "./TradeInterface.sol";
import "./TradeLib.sol";

contract TradeImpl is TradeInterface {

    enum bytesData {tradeId,tradeType,assetId}
    enum integerData {tradeAmount}
    enum addressData {fromParty,toParty}

    mapping(bytes32 => TradeLib.tradeStruct) trades;
    
    function submitTrade(bytes32[] calldata _bytesData , uint[] calldata _intData, address[] calldata _addressData) external 
    {

        bytes32 tradeId =  _bytesData[uint(bytesData.tradeId)];
        
        TradeLib.tradeStruct memory  trade  = trades[tradeId];

        trade.tradeType = _bytesData[uint(bytesData.tradeType)];
        trade.fromParty = _addressData[uint(addressData.fromParty)];
        trade.toParty = _addressData[uint(addressData.toParty)];
        trade.tradeAmount = _intData[uint(integerData.tradeAmount)];
    }

    function getTrade(bytes32 tradeId) external returns (bytes32[] memory _bytesData, uint[] memory _intData, address[] memory _addressData)
    {
        TradeLib.tradeStruct memory  trade  = trades[tradeId];
        
        _bytesData[uint(bytesData.tradeId)] = trade.tradeId;
        _bytesData[uint(bytesData.tradeType)] = trade.tradeType;
        _addressData[uint(addressData.fromParty)] = trade.fromParty;
        _addressData[uint(addressData.toParty)] = trade.toParty;
        _intData[uint(integerData.tradeAmount)] = trade.tradeAmount;
        return (_bytesData, _intData, _addressData);
    }    
    
}
