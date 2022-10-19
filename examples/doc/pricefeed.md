# proto - pricefeed
<a name="top"></a>

## Table of Contents

- [pricefeed/genesis.proto](#pricefeed_genesis-proto)
    - [GenesisState](#nibiru-pricefeed-v1-GenesisState)
  
- [pricefeed/gov.proto](#pricefeed_gov-proto)
    - [AddOracleProposal](#nibiru-pricefeed-v1-AddOracleProposal)
  
- [pricefeed/query.proto](#pricefeed_query-proto)
    - [CurrentPriceResponse](#nibiru-pricefeed-v1-CurrentPriceResponse)
    - [Market](#nibiru-pricefeed-v1-Market)
    - [PostedPriceResponse](#nibiru-pricefeed-v1-PostedPriceResponse)
    - [QueryMarketsRequest](#nibiru-pricefeed-v1-QueryMarketsRequest)
    - [QueryMarketsResponse](#nibiru-pricefeed-v1-QueryMarketsResponse)
    - [QueryOraclesRequest](#nibiru-pricefeed-v1-QueryOraclesRequest)
    - [QueryOraclesResponse](#nibiru-pricefeed-v1-QueryOraclesResponse)
    - [QueryParamsRequest](#nibiru-pricefeed-v1-QueryParamsRequest)
    - [QueryParamsResponse](#nibiru-pricefeed-v1-QueryParamsResponse)
    - [QueryPriceRequest](#nibiru-pricefeed-v1-QueryPriceRequest)
    - [QueryPriceResponse](#nibiru-pricefeed-v1-QueryPriceResponse)
    - [QueryPricesRequest](#nibiru-pricefeed-v1-QueryPricesRequest)
    - [QueryPricesResponse](#nibiru-pricefeed-v1-QueryPricesResponse)
    - [QueryRawPricesRequest](#nibiru-pricefeed-v1-QueryRawPricesRequest)
    - [QueryRawPricesResponse](#nibiru-pricefeed-v1-QueryRawPricesResponse)
  
    - [Query](#nibiru-pricefeed-v1-Query)
  
- [pricefeed/state.proto](#pricefeed_state-proto)
    - [ActivePairMarshaler](#nibiru-pricefeed-v1-ActivePairMarshaler)
    - [CurrentPrice](#nibiru-pricefeed-v1-CurrentPrice)
    - [CurrentTWAP](#nibiru-pricefeed-v1-CurrentTWAP)
    - [OraclesMarshaler](#nibiru-pricefeed-v1-OraclesMarshaler)
    - [Params](#nibiru-pricefeed-v1-Params)
    - [PostedPrice](#nibiru-pricefeed-v1-PostedPrice)
    - [PriceSnapshot](#nibiru-pricefeed-v1-PriceSnapshot)
  
- [pricefeed/tx.proto](#pricefeed_tx-proto)
    - [EventOracleUpdatePrice](#nibiru-pricefeed-v1-EventOracleUpdatePrice)
    - [EventPairPriceUpdated](#nibiru-pricefeed-v1-EventPairPriceUpdated)
    - [MsgPostPrice](#nibiru-pricefeed-v1-MsgPostPrice)
    - [MsgPostPriceResponse](#nibiru-pricefeed-v1-MsgPostPriceResponse)
  
    - [Msg](#nibiru-pricefeed-v1-Msg)
  
- [Scalar Value Types](#scalar-value-types)



<a name="pricefeed_genesis-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## pricefeed/genesis.proto



<a name="nibiru-pricefeed-v1-GenesisState"></a>

### GenesisState
GenesisState defines the pricefeed module&#39;s genesis state.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| params | [Params](#nibiru-pricefeed-v1-Params) |  | params defines all the paramaters of the module. |
| posted_prices | [PostedPrice](#nibiru-pricefeed-v1-PostedPrice) | repeated |  |
| genesis_oracles | [string](#string) | repeated |  |





 

 

 

 



<a name="pricefeed_gov-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## pricefeed/gov.proto



<a name="nibiru-pricefeed-v1-AddOracleProposal"></a>

### AddOracleProposal



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  |  |
| description | [string](#string) |  |  |
| oracles | [string](#string) | repeated |  |
| pairs | [string](#string) | repeated |  |





 

 

 

 



<a name="pricefeed_query-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## pricefeed/query.proto



<a name="nibiru-pricefeed-v1-CurrentPriceResponse"></a>

### CurrentPriceResponse
CurrentPriceResponse defines a current price for a particular &#39;PairID&#39; in the pricefeed
module.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| price | [string](#string) |  | most current price of the trading pair |
| twap | [string](#string) |  | twap of the trading pair |






<a name="nibiru-pricefeed-v1-Market"></a>

### Market
Market defines an asset in the pricefeed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| oracles | [string](#string) | repeated |  |
| active | [bool](#bool) |  |  |






<a name="nibiru-pricefeed-v1-PostedPriceResponse"></a>

### PostedPriceResponse
PostedPriceResponse defines a price for &#39;PairID&#39; posted by a specific oracle.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| oracle_address | [string](#string) |  |  |
| price | [string](#string) |  |  |
| expiry | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="nibiru-pricefeed-v1-QueryMarketsRequest"></a>

### QueryMarketsRequest
QueryMarketsRequest is the request type for the Query/Pairs RPC method.






<a name="nibiru-pricefeed-v1-QueryMarketsResponse"></a>

### QueryMarketsResponse
QueryMarketsResponse is the response type for the Query/Pairs RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| markets | [Market](#nibiru-pricefeed-v1-Market) | repeated |  |






<a name="nibiru-pricefeed-v1-QueryOraclesRequest"></a>

### QueryOraclesRequest
QueryOraclesRequest is the request type for the Query/Oracles RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |






<a name="nibiru-pricefeed-v1-QueryOraclesResponse"></a>

### QueryOraclesResponse
QueryOraclesResponse is the response type for the Query/Oracles RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| oracles | [string](#string) | repeated | List of oracle addresses |






<a name="nibiru-pricefeed-v1-QueryParamsRequest"></a>

### QueryParamsRequest
QueryParamsRequest defines the request type for querying x/pricefeed
parameters.






<a name="nibiru-pricefeed-v1-QueryParamsResponse"></a>

### QueryParamsResponse
QueryParamsResponse defines the response type for querying x/pricefeed
parameters.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| params | [Params](#nibiru-pricefeed-v1-Params) |  |  |






<a name="nibiru-pricefeed-v1-QueryPriceRequest"></a>

### QueryPriceRequest
QueryPriceRequest is the request type for the Query/PriceRequest RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |






<a name="nibiru-pricefeed-v1-QueryPriceResponse"></a>

### QueryPriceResponse
QueryPriceResponse is the response type for the Query/Prices RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| price | [CurrentPriceResponse](#nibiru-pricefeed-v1-CurrentPriceResponse) |  |  |






<a name="nibiru-pricefeed-v1-QueryPricesRequest"></a>

### QueryPricesRequest
QueryPricesRequest is the request type for the Query/Prices RPC method.






<a name="nibiru-pricefeed-v1-QueryPricesResponse"></a>

### QueryPricesResponse
QueryPricesResponse is the response type for the Query/Prices RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prices | [CurrentPriceResponse](#nibiru-pricefeed-v1-CurrentPriceResponse) | repeated |  |






<a name="nibiru-pricefeed-v1-QueryRawPricesRequest"></a>

### QueryRawPricesRequest
QueryRawPricesRequest is the request type for the Query/RawPrices RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |






<a name="nibiru-pricefeed-v1-QueryRawPricesResponse"></a>

### QueryRawPricesResponse
QueryRawPricesResponse is the response type for the Query/RawPrices RPC
method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| raw_prices | [PostedPriceResponse](#nibiru-pricefeed-v1-PostedPriceResponse) | repeated |  |





 

 

 


<a name="nibiru-pricefeed-v1-Query"></a>

### Query
Query defines the gRPC querier service for pricefeed module

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| QueryParams | [QueryParamsRequest](#nibiru-pricefeed-v1-QueryParamsRequest) | [QueryParamsResponse](#nibiru-pricefeed-v1-QueryParamsResponse) | QueryParams queries all parameters of the pricefeed module. |
| QueryPrice | [QueryPriceRequest](#nibiru-pricefeed-v1-QueryPriceRequest) | [QueryPriceResponse](#nibiru-pricefeed-v1-QueryPriceResponse) | QueryPrice queries price details for a pair |
| QueryPrices | [QueryPricesRequest](#nibiru-pricefeed-v1-QueryPricesRequest) | [QueryPricesResponse](#nibiru-pricefeed-v1-QueryPricesResponse) | QueryPrices queries all prices |
| QueryRawPrices | [QueryRawPricesRequest](#nibiru-pricefeed-v1-QueryRawPricesRequest) | [QueryRawPricesResponse](#nibiru-pricefeed-v1-QueryRawPricesResponse) | QueryRawPrices queries all raw prices for an asset pair |
| QueryOracles | [QueryOraclesRequest](#nibiru-pricefeed-v1-QueryOraclesRequest) | [QueryOraclesResponse](#nibiru-pricefeed-v1-QueryOraclesResponse) | QueryOracles queries all oracles for an asset pair |
| QueryMarkets | [QueryMarketsRequest](#nibiru-pricefeed-v1-QueryMarketsRequest) | [QueryMarketsResponse](#nibiru-pricefeed-v1-QueryMarketsResponse) | QueryMarkets queries all markets |

 



<a name="pricefeed_state-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## pricefeed/state.proto



<a name="nibiru-pricefeed-v1-ActivePairMarshaler"></a>

### ActivePairMarshaler
ActivePairMarshaler is a codec.ProtoMarshaler for the &#34;IsActive&#34; status of
a pair in the ActivePairState sdk.KVStore.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| is_active | [bool](#bool) |  |  |






<a name="nibiru-pricefeed-v1-CurrentPrice"></a>

### CurrentPrice
CurrentPrice defines the current price for an asset pair in the pricefeed
module.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| price | [string](#string) |  |  |






<a name="nibiru-pricefeed-v1-CurrentTWAP"></a>

### CurrentTWAP
CurrentTWAP states defines the numerator and denominator for the TWAP calculation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| numerator | [string](#string) |  |  |
| denominator | [string](#string) |  |  |
| price | [string](#string) |  |  |






<a name="nibiru-pricefeed-v1-OraclesMarshaler"></a>

### OraclesMarshaler
OraclesMarshaler is a codec.ProtoMarshaler for an oracles array in the
OraclesState sdk.KVStore.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| oracles | [bytes](#bytes) | repeated |  |






<a name="nibiru-pricefeed-v1-Params"></a>

### Params
Params defines the parameters for the x/pricefeed module.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pairs | [nibiru.common.AssetPair](#nibiru-common-AssetPair) | repeated | Pairs is the list of valid trading pairs for the module. Add new trading pairs |
| twap_lookback_window | [google.protobuf.Duration](#google-protobuf-Duration) |  | amount of time to look back for TWAP calculations |






<a name="nibiru-pricefeed-v1-PostedPrice"></a>

### PostedPrice
PostedPrice defines a price for an asset pair posted by a specific oracle.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| oracle | [string](#string) |  |  |
| price | [string](#string) |  |  |
| expiry | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="nibiru-pricefeed-v1-PriceSnapshot"></a>

### PriceSnapshot
a snapshot of the pricefeed oracle&#39;s median price at a given point in time


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  | the token pair |
| price | [string](#string) |  | the median prices of all oracles |
| timestamp_ms | [int64](#int64) |  | milliseconds since unix epoch |





 

 

 

 



<a name="pricefeed_tx-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## pricefeed/tx.proto



<a name="nibiru-pricefeed-v1-EventOracleUpdatePrice"></a>

### EventOracleUpdatePrice



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| oracle | [string](#string) |  |  |
| pair_price | [string](#string) |  |  |
| expiry | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="nibiru-pricefeed-v1-EventPairPriceUpdated"></a>

### EventPairPriceUpdated



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| pair_price | [string](#string) |  |  |






<a name="nibiru-pricefeed-v1-MsgPostPrice"></a>

### MsgPostPrice
MsgPostPrice represents a method for creating a new post price


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| oracle | [string](#string) |  | From: address of oracle |
| token0 | [string](#string) |  | Token0: denominator unit of the price, a.k.a. quote asset |
| token1 | [string](#string) |  | Token1: numerator unit of price, a.k.a. base asset |
| price | [string](#string) |  | Price: Price of the trading pair in units of token1 / token0. |
| expiry | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="nibiru-pricefeed-v1-MsgPostPriceResponse"></a>

### MsgPostPriceResponse
MsgPostPriceResponse defines the Msg/PostPrice response type.





 

 

 


<a name="nibiru-pricefeed-v1-Msg"></a>

### Msg
Msg defines the pricefeed Msg service.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| PostPrice | [MsgPostPrice](#nibiru-pricefeed-v1-MsgPostPrice) | [MsgPostPriceResponse](#nibiru-pricefeed-v1-MsgPostPriceResponse) | PostPrice defines a method for creating a new post price |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

