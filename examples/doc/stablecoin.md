# proto - stablecoin
<a name="top"></a>

## Table of Contents

- [stablecoin/events.proto](#stablecoin_events-proto)
    - [EventBurnNIBI](#nibiru-stablecoin-v1-EventBurnNIBI)
    - [EventBurnStable](#nibiru-stablecoin-v1-EventBurnStable)
    - [EventBuyback](#nibiru-stablecoin-v1-EventBuyback)
    - [EventMintNIBI](#nibiru-stablecoin-v1-EventMintNIBI)
    - [EventMintStable](#nibiru-stablecoin-v1-EventMintStable)
    - [EventRecollateralize](#nibiru-stablecoin-v1-EventRecollateralize)
    - [EventTransfer](#nibiru-stablecoin-v1-EventTransfer)
  
- [stablecoin/genesis.proto](#stablecoin_genesis-proto)
    - [GenesisState](#nibiru-stablecoin-v1-GenesisState)
  
- [stablecoin/params.proto](#stablecoin_params-proto)
    - [Params](#nibiru-stablecoin-v1-Params)
  
- [stablecoin/query.proto](#stablecoin_query-proto)
    - [LiquidityRatioInfo](#nibiru-stablecoin-v1-LiquidityRatioInfo)
    - [QueryCirculatingSupplies](#nibiru-stablecoin-v1-QueryCirculatingSupplies)
    - [QueryCirculatingSuppliesResponse](#nibiru-stablecoin-v1-QueryCirculatingSuppliesResponse)
    - [QueryGovToMintStable](#nibiru-stablecoin-v1-QueryGovToMintStable)
    - [QueryGovToMintStableResponse](#nibiru-stablecoin-v1-QueryGovToMintStableResponse)
    - [QueryLiquidityRatioInfoRequest](#nibiru-stablecoin-v1-QueryLiquidityRatioInfoRequest)
    - [QueryLiquidityRatioInfoResponse](#nibiru-stablecoin-v1-QueryLiquidityRatioInfoResponse)
    - [QueryModuleAccountBalances](#nibiru-stablecoin-v1-QueryModuleAccountBalances)
    - [QueryModuleAccountBalancesResponse](#nibiru-stablecoin-v1-QueryModuleAccountBalancesResponse)
    - [QueryParamsRequest](#nibiru-stablecoin-v1-QueryParamsRequest)
    - [QueryParamsResponse](#nibiru-stablecoin-v1-QueryParamsResponse)
  
    - [Query](#nibiru-stablecoin-v1-Query)
  
- [stablecoin/tx.proto](#stablecoin_tx-proto)
    - [MsgBurnStable](#nibiru-stablecoin-v1-MsgBurnStable)
    - [MsgBurnStableResponse](#nibiru-stablecoin-v1-MsgBurnStableResponse)
    - [MsgBuyback](#nibiru-stablecoin-v1-MsgBuyback)
    - [MsgBuybackResponse](#nibiru-stablecoin-v1-MsgBuybackResponse)
    - [MsgMintStable](#nibiru-stablecoin-v1-MsgMintStable)
    - [MsgMintStableResponse](#nibiru-stablecoin-v1-MsgMintStableResponse)
    - [MsgRecollateralize](#nibiru-stablecoin-v1-MsgRecollateralize)
    - [MsgRecollateralizeResponse](#nibiru-stablecoin-v1-MsgRecollateralizeResponse)
  
    - [Msg](#nibiru-stablecoin-v1-Msg)
  
- [Scalar Value Types](#scalar-value-types)



<a name="stablecoin_events-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## stablecoin/events.proto



<a name="nibiru-stablecoin-v1-EventBurnNIBI"></a>

### EventBurnNIBI



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-EventBurnStable"></a>

### EventBurnStable



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-EventBuyback"></a>

### EventBuyback



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| caller | [string](#string) |  |  |
| in_coin | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| out_coin | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| coll_ratio | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-EventMintNIBI"></a>

### EventMintNIBI



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-EventMintStable"></a>

### EventMintStable



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-EventRecollateralize"></a>

### EventRecollateralize



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| caller | [string](#string) |  |  |
| in_coin | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| out_coin | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| coll_ratio | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-EventTransfer"></a>

### EventTransfer



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| coin | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| from | [string](#string) |  |  |
| to | [string](#string) |  |  |





 

 

 

 



<a name="stablecoin_genesis-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## stablecoin/genesis.proto



<a name="nibiru-stablecoin-v1-GenesisState"></a>

### GenesisState
GenesisState defines the stablecoin module&#39;s genesis state.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| params | [Params](#nibiru-stablecoin-v1-Params) |  |  |
| module_account_balance | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |





 

 

 

 



<a name="stablecoin_params-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## stablecoin/params.proto



<a name="nibiru-stablecoin-v1-Params"></a>

### Params
Params defines the parameters for the module.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| coll_ratio | [int64](#int64) |  | collRatio is the ratio needed as collateral to exchange for stables |
| fee_ratio | [int64](#int64) |  | feeRatio is the ratio taken as fees when minting or burning stables |
| ef_fee_ratio | [int64](#int64) |  | efFeeRatio is the ratio taken from the fees that goes to Ecosystem Fund |
| bonus_rate_recoll | [int64](#int64) |  | BonusRateRecoll is the percentage of extra stablecoin value given to the caller of &#39;Recollateralize&#39; in units of governance tokens. |
| distr_epoch_identifier | [string](#string) |  | distr_epoch_identifier defines the frequnecy of update for the collateral ratio |
| adjustment_step | [int64](#int64) |  | adjustmentStep is the size of the step taken when updating the collateral ratio |
| price_lower_bound | [int64](#int64) |  | priceLowerBound is the lower bound for the stable coin to trigger a collateral ratio update |
| price_upper_bound | [int64](#int64) |  | priceUpperBound is the upper bound for the stable coin to trigger a collateral ratio update |
| is_collateral_ratio_valid | [bool](#bool) |  | isCollateralRatioValid checks if the collateral ratio is correctly updated |





 

 

 

 



<a name="stablecoin_query-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## stablecoin/query.proto



<a name="nibiru-stablecoin-v1-LiquidityRatioInfo"></a>

### LiquidityRatioInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| liquidity_ratio | [string](#string) |  |  |
| upper_band | [string](#string) |  |  |
| lower_band | [string](#string) |  |  |






<a name="nibiru-stablecoin-v1-QueryCirculatingSupplies"></a>

### QueryCirculatingSupplies
QueryCirculatingSupplies is the request type for the circulating supply of
both NIBI and NUSD.






<a name="nibiru-stablecoin-v1-QueryCirculatingSuppliesResponse"></a>

### QueryCirculatingSuppliesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nibi | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| nusd | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |






<a name="nibiru-stablecoin-v1-QueryGovToMintStable"></a>

### QueryGovToMintStable
QueryGovToMintStable is the request type for the Query/GovToMintStable RPC method


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collateral | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |






<a name="nibiru-stablecoin-v1-QueryGovToMintStableResponse"></a>

### QueryGovToMintStableResponse
QueryGovToMintStableResponse is the response type for &#39;QueryGovToMintStable&#39;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |






<a name="nibiru-stablecoin-v1-QueryLiquidityRatioInfoRequest"></a>

### QueryLiquidityRatioInfoRequest







<a name="nibiru-stablecoin-v1-QueryLiquidityRatioInfoResponse"></a>

### QueryLiquidityRatioInfoResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| info | [LiquidityRatioInfo](#nibiru-stablecoin-v1-LiquidityRatioInfo) |  |  |






<a name="nibiru-stablecoin-v1-QueryModuleAccountBalances"></a>

### QueryModuleAccountBalances
QueryModuleAccountBalances is the request type for the balance of the 
x/stablecoin module account.






<a name="nibiru-stablecoin-v1-QueryModuleAccountBalancesResponse"></a>

### QueryModuleAccountBalancesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| module_account_balances | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) | repeated | ModuleAccountBalances is the balance of all coins in the x/stablecoin module. |






<a name="nibiru-stablecoin-v1-QueryParamsRequest"></a>

### QueryParamsRequest
QueryParamsRequest is request type for the Query/Params RPC method.






<a name="nibiru-stablecoin-v1-QueryParamsResponse"></a>

### QueryParamsResponse
QueryParamsResponse is response type for the Query/Params RPC method.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| params | [Params](#nibiru-stablecoin-v1-Params) |  | params holds all the parameters of this module. |





 

 

 


<a name="nibiru-stablecoin-v1-Query"></a>

### Query
Query defines the gRPC querier service.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Params | [QueryParamsRequest](#nibiru-stablecoin-v1-QueryParamsRequest) | [QueryParamsResponse](#nibiru-stablecoin-v1-QueryParamsResponse) | Parameters queries the parameters of the x/stablecoin module. |
| ModuleAccountBalances | [QueryModuleAccountBalances](#nibiru-stablecoin-v1-QueryModuleAccountBalances) | [QueryModuleAccountBalancesResponse](#nibiru-stablecoin-v1-QueryModuleAccountBalancesResponse) | ModuleAccountBalances queries the account balance of x/stablecoin. |
| CirculatingSupplies | [QueryCirculatingSupplies](#nibiru-stablecoin-v1-QueryCirculatingSupplies) | [QueryCirculatingSuppliesResponse](#nibiru-stablecoin-v1-QueryCirculatingSuppliesResponse) |  |
| LiquidityRatioInfo | [QueryLiquidityRatioInfoRequest](#nibiru-stablecoin-v1-QueryLiquidityRatioInfoRequest) | [QueryLiquidityRatioInfoResponse](#nibiru-stablecoin-v1-QueryLiquidityRatioInfoResponse) |  |

 



<a name="stablecoin_tx-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## stablecoin/tx.proto



<a name="nibiru-stablecoin-v1-MsgBurnStable"></a>

### MsgBurnStable
MsgBurnStable allows users to burn NUSD in exchange for NIBI and collateral. 
The amount of NIBI and Collateral received depends on the current price set by 
the x/pricefeed library and the current collateral ratio.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| creator | [string](#string) |  |  |
| stable | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |






<a name="nibiru-stablecoin-v1-MsgBurnStableResponse"></a>

### MsgBurnStableResponse
MsgBurnStableResponse specifies the amount of collateral and governance 
token the user will receive after their burn transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collateral | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| gov | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| fees_payed | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) | repeated |  |






<a name="nibiru-stablecoin-v1-MsgBuyback"></a>

### MsgBuyback
MsgBuyback


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| creator | [string](#string) |  |  |
| gov | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  | Gov (sdk.Coin): Tokens the caller wants to sell to the protocol in exchange for collateral. |






<a name="nibiru-stablecoin-v1-MsgBuybackResponse"></a>

### MsgBuybackResponse
MsgBuybackResponse is the output of a successful &#39;Buyback&#39;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| coll | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  | Coll (sdk.Coin): Tokens sold to the caller in exchange for her collateral. |






<a name="nibiru-stablecoin-v1-MsgMintStable"></a>

### MsgMintStable
MsgMintStable: Msg to mint NUSD. A user deposits NIBI and collateral and gets 
NUSD in return. The amount of NUSD received depends on the current price set 
by the pricefeed library and the current collateral ratio for the protocol.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| creator | [string](#string) |  |  |
| stable | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |






<a name="nibiru-stablecoin-v1-MsgMintStableResponse"></a>

### MsgMintStableResponse
MsgMintStableResponse specifies the amount of NUSD token the user will receive after their
mint transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stable | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |
| used_coins | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) | repeated |  |
| fees_payed | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) | repeated |  |






<a name="nibiru-stablecoin-v1-MsgRecollateralize"></a>

### MsgRecollateralize
MsgRecollateralize


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| creator | [string](#string) |  |  |
| coll | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  |  |






<a name="nibiru-stablecoin-v1-MsgRecollateralizeResponse"></a>

### MsgRecollateralizeResponse
MsgRecollateralizeResponse is the output of a successful &#39;Recollateralize&#39;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| gov | [cosmos.base.v1beta1.Coin](#cosmos-base-v1beta1-Coin) |  | Gov (sdk.Coin): Tokens rewarded to the caller in exchange for her collateral. |





 

 

 


<a name="nibiru-stablecoin-v1-Msg"></a>

### Msg
Msg defines the x/stablecoin Msg service.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| MintStable | [MsgMintStable](#nibiru-stablecoin-v1-MsgMintStable) | [MsgMintStableResponse](#nibiru-stablecoin-v1-MsgMintStableResponse) | MintStable defines a method for trading a mixture of GOV and COLL to mint an equivalent value of stablecoins. |
| BurnStable | [MsgBurnStable](#nibiru-stablecoin-v1-MsgBurnStable) | [MsgBurnStableResponse](#nibiru-stablecoin-v1-MsgBurnStableResponse) | BurnStable defines a method for redeeming/burning stablecoins to receive an equivalent value as a mixture of governance and collateral tokens. |
| Recollateralize | [MsgRecollateralize](#nibiru-stablecoin-v1-MsgRecollateralize) | [MsgRecollateralizeResponse](#nibiru-stablecoin-v1-MsgRecollateralizeResponse) | Recollateralize defines a method for manually adding collateral to the protocol in exchange for an equivalent stablecoin value in governance tokens plus a small bonus. |
| Buyback | [MsgBuyback](#nibiru-stablecoin-v1-MsgBuyback) | [MsgBuybackResponse](#nibiru-stablecoin-v1-MsgBuybackResponse) | Buyback defines a method for manually adding NIBI to the protocol in exchange for an equivalent stablecoin value in collateral, effectively executing a share buyback for Nibiru Chain. The NIBI purchased by the protocol is then burned, distributing value to all NIBI hodlers. |

 



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

