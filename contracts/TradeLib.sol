pragma solidity >=0.4.22 <0.6.0;

library TradeLib{
    
    struct tradeStruct{
        bytes32 tradeId;
        bytes32 tradeType;
        address fromParty;
        address toParty;
        uint tradeAmount;
    } 
    
}

