# proto - vpool
<a name="top"></a>

## Table of Contents

- [vpool/v1/event.proto](#vpool_v1_event-proto)
    - [MarkPriceChangedEvent](#nibiru-vpool-v1-MarkPriceChangedEvent)
    - [ReserveSnapshotSavedEvent](#nibiru-vpool-v1-ReserveSnapshotSavedEvent)
    - [SwapBaseForQuoteEvent](#nibiru-vpool-v1-SwapBaseForQuoteEvent)
    - [SwapQuoteForBaseEvent](#nibiru-vpool-v1-SwapQuoteForBaseEvent)
  
- [vpool/v1/genesis.proto](#vpool_v1_genesis-proto)
    - [GenesisState](#nibiru-vpool-v1-GenesisState)
  
- [vpool/v1/gov.proto](#vpool_v1_gov-proto)
    - [CreatePoolProposal](#nibiru-vpool-v1-CreatePoolProposal)
  
- [vpool/v1/query.proto](#vpool_v1_query-proto)
    - [QueryAllPoolsRequest](#nibiru-vpool-v1-QueryAllPoolsRequest)
    - [QueryAllPoolsResponse](#nibiru-vpool-v1-QueryAllPoolsResponse)
    - [QueryBaseAssetPriceRequest](#nibiru-vpool-v1-QueryBaseAssetPriceRequest)
    - [QueryBaseAssetPriceResponse](#nibiru-vpool-v1-QueryBaseAssetPriceResponse)
    - [QueryReserveAssetsRequest](#nibiru-vpool-v1-QueryReserveAssetsRequest)
    - [QueryReserveAssetsResponse](#nibiru-vpool-v1-QueryReserveAssetsResponse)
  
    - [Query](#nibiru-vpool-v1-Query)
  
- [vpool/v1/state.proto](#vpool_v1_state-proto)
    - [CurrentTWAP](#nibiru-vpool-v1-CurrentTWAP)
    - [PoolPrices](#nibiru-vpool-v1-PoolPrices)
    - [ReserveSnapshot](#nibiru-vpool-v1-ReserveSnapshot)
    - [VPool](#nibiru-vpool-v1-VPool)
  
    - [Direction](#nibiru-vpool-v1-Direction)
    - [TwapCalcOption](#nibiru-vpool-v1-TwapCalcOption)
  
- [Scalar Value Types](#scalar-value-types)



<a name="vpool_v1_event-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## vpool/v1/event.proto



<a name="nibiru-vpool-v1-MarkPriceChangedEvent"></a>

### MarkPriceChangedEvent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  |  |
| price | [string](#string) |  |  |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="nibiru-vpool-v1-ReserveSnapshotSavedEvent"></a>

### ReserveSnapshotSavedEvent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  |  |
| quote_reserve | [string](#string) |  |  |
| base_reserve | [string](#string) |  |  |






<a name="nibiru-vpool-v1-SwapBaseForQuoteEvent"></a>

### SwapBaseForQuoteEvent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  |  |
| quote_amount | [string](#string) |  |  |
| base_amount | [string](#string) |  |  |






<a name="nibiru-vpool-v1-SwapQuoteForBaseEvent"></a>

### SwapQuoteForBaseEvent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  |  |
| quote_amount | [string](#string) |  |  |
| base_amount | [string](#string) |  |  |





 

 

 

 



<a name="vpool_v1_genesis-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## vpool/v1/genesis.proto



<a name="nibiru-vpool-v1-GenesisState"></a>

### GenesisState
GenesisState defines the vpool module&#39;s genesis state.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vpools | [VPool](#nibiru-vpool-v1-VPool) | repeated |  |
| snapshots | [ReserveSnapshot](#nibiru-vpool-v1-ReserveSnapshot) | repeated |  |





 

 

 

 



<a name="vpool_v1_gov-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## vpool/v1/gov.proto



<a name="nibiru-vpool-v1-CreatePoolProposal"></a>

### CreatePoolProposal



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  |  |
| description | [string](#string) |  |  |
| pair | [string](#string) |  | pair represents the pair of the vpool. |
| trade_limit_ratio | [string](#string) |  | trade_limit_ratio represents the limit on trading amounts. |
| quote_asset_reserve | [string](#string) |  | quote_asset_reserve is the amount of quote asset the pool will be initialized with. |
| base_asset_reserve | [string](#string) |  | base_asset_reserve is the amount of base asset the pool will be initialized with. |
| fluctuation_limit_ratio | [string](#string) |  | fluctuation_limit_ratio represents the maximum price percentage difference a trade can create on the pool. |
| max_oracle_spread_ratio | [string](#string) |  | max_oracle_spread_ratio represents the maximum price percentage difference that can exist between oracle price and vpool prices after a trade. |
| maintenance_margin_ratio | [string](#string) |  | maintenance_margin_ratio |
| max_leverage | [string](#string) |  | max_leverage |





 

 

 

 



<a name="vpool_v1_query-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## vpool/v1/query.proto



<a name="nibiru-vpool-v1-QueryAllPoolsRequest"></a>

### QueryAllPoolsRequest







<a name="nibiru-vpool-v1-QueryAllPoolsResponse"></a>

### QueryAllPoolsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pools | [VPool](#nibiru-vpool-v1-VPool) | repeated |  |
| prices | [PoolPrices](#nibiru-vpool-v1-PoolPrices) | repeated |  |






<a name="nibiru-vpool-v1-QueryBaseAssetPriceRequest"></a>

### QueryBaseAssetPriceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  |  |
| direction | [Direction](#nibiru-vpool-v1-Direction) |  |  |
| base_asset_amount | [string](#string) |  | base asset is the crypto asset, e.g. BTC or ETH |






<a name="nibiru-vpool-v1-QueryBaseAssetPriceResponse"></a>

### QueryBaseAssetPriceResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| price_in_quote_denom | [string](#string) |  |  |






<a name="nibiru-vpool-v1-QueryReserveAssetsRequest"></a>

### QueryReserveAssetsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  | always BASE:QUOTE, e.g. BTC:NUSD or ETH:NUSD |






<a name="nibiru-vpool-v1-QueryReserveAssetsResponse"></a>

### QueryReserveAssetsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| base_asset_reserve | [string](#string) |  | base asset is the crypto asset, e.g. BTC or ETH |
| quote_asset_reserve | [string](#string) |  | quote asset is usually stablecoin, in our case NUSD |





 

 

 


<a name="nibiru-vpool-v1-Query"></a>

### Query
Query defines the gRPC querier service.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ReserveAssets | [QueryReserveAssetsRequest](#nibiru-vpool-v1-QueryReserveAssetsRequest) | [QueryReserveAssetsResponse](#nibiru-vpool-v1-QueryReserveAssetsResponse) | Queries the reserve assets in a given pool, identified by a token pair. |
| AllPools | [QueryAllPoolsRequest](#nibiru-vpool-v1-QueryAllPoolsRequest) | [QueryAllPoolsResponse](#nibiru-vpool-v1-QueryAllPoolsResponse) | Queries all virtual pools. |
| BaseAssetPrice | [QueryBaseAssetPriceRequest](#nibiru-vpool-v1-QueryBaseAssetPriceRequest) | [QueryBaseAssetPriceResponse](#nibiru-vpool-v1-QueryBaseAssetPriceResponse) | Queries prices |

 



<a name="vpool_v1_state-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## vpool/v1/state.proto



<a name="nibiru-vpool-v1-CurrentTWAP"></a>

### CurrentTWAP
CurrentTWAP states defines the numerator and denominator for the TWAP calculation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair_id | [string](#string) |  |  |
| numerator | [string](#string) |  |  |
| denominator | [string](#string) |  |  |
| price | [string](#string) |  |  |






<a name="nibiru-vpool-v1-PoolPrices"></a>

### PoolPrices
PoolPrices is a simple structure that displays a snapshot of the mark and index
prices for an asset. Empty strings for the indexPrice or twapMark fields 
indicate that the price is currently unavailable.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [string](#string) |  | Pair identifier for the two assets. Always in format &#39;base:quote&#39; |
| mark_price | [string](#string) |  | MarkPrice is the instantaneous price of the perp. Equivalent to quoteAssetReserve / baseAssetReserve. |
| index_price | [string](#string) |  | IndexPrice is the price of the &#34;underlying&#34; for the perp |
| twap_mark | [string](#string) |  | TwapMark is the time-weighted average (mark) price. |
| swap_invariant | [string](#string) |  | SwapInvariant is the product of the reserves, commonly referred to as &#34;k&#34;. |
| block_number | [int64](#int64) |  | The block number corresponding to each price |






<a name="nibiru-vpool-v1-ReserveSnapshot"></a>

### ReserveSnapshot
a snapshot of the vpool&#39;s reserves at a given point in time


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [nibiru.common.AssetPair](#nibiru-common-AssetPair) |  |  |
| base_asset_reserve | [string](#string) |  |  |
| quote_asset_reserve | [string](#string) |  | quote asset is usually the margin asset, e.g. NUSD |
| timestamp_ms | [int64](#int64) |  | milliseconds since unix epoch |






<a name="nibiru-vpool-v1-VPool"></a>

### VPool
A virtual pool used only for price discovery of perpetual futures contracts.
No real liquidity exists in this pool.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pair | [nibiru.common.AssetPair](#nibiru-common-AssetPair) |  | always BASE:QUOTE, e.g. BTC:NUSD or ETH:NUSD |
| base_asset_reserve | [string](#string) |  | base asset is the crypto asset, e.g. BTC or ETH |
| quote_asset_reserve | [string](#string) |  | quote asset is usually stablecoin, in our case NUSD |
| trade_limit_ratio | [string](#string) |  | ratio applied to reserves in order not to over trade |
| fluctuation_limit_ratio | [string](#string) |  | percentage that a single open or close position can alter the reserve amounts |
| max_oracle_spread_ratio | [string](#string) |  | max_oracle_spread_ratio |
| maintenance_margin_ratio | [string](#string) |  | maintenance_margin_ratio |
| max_leverage | [string](#string) |  | max_leverage |





 


<a name="nibiru-vpool-v1-Direction"></a>

### Direction


| Name | Number | Description |
| ---- | ------ | ----------- |
| DIRECTION_UNSPECIFIED | 0 |  |
| ADD_TO_POOL | 1 |  |
| REMOVE_FROM_POOL | 2 |  |



<a name="nibiru-vpool-v1-TwapCalcOption"></a>

### TwapCalcOption
Enumerates different options of calculating twap.

| Name | Number | Description |
| ---- | ------ | ----------- |
| TWAP_CALC_OPTION_UNSPECIFIED | 0 |  |
| SPOT | 1 | Spot price from quote asset reserve / base asset reserve |
| QUOTE_ASSET_SWAP | 2 | Swapping with quote assets, output denominated in base assets |
| BASE_ASSET_SWAP | 3 | Swapping with base assets, output denominated in quote assets |


 

 

 



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

