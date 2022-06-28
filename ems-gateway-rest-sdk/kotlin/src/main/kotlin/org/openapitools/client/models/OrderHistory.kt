/**
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json

/**
 * 
 *
 * @param apikey Apikey
 * @param exchangeId Exchange id
 * @param clientOrderId Client order id
 * @param symbolIdExchange Symbol id exchange
 * @param symbolIdCoinapi Symbol id in coinapi
 * @param amountOrder Amount
 * @param price Price
 * @param side 1-buy, 2-sell
 * @param orderType Order type
 * @param timeInForce Time in force
 * @param expireTime Expire time
 * @param execInst Exec inst
 * @param clientOrderIdFormatExchange Client order id format
 * @param exchangeOrderId Exchange order id
 * @param amountOpen Amount open
 * @param amountFilled Amount filled
 * @param avgPx Average price
 * @param status Status
 * @param statusHistoryStatus History status
 * @param statusHistoryTime History status time
 * @param errorMessageResult Error message
 * @param errorMessageReason Error message reason
 * @param errorMessageMessage Error message
 * @param fillsTime Fills time
 * @param fillsPrice Fills price
 * @param fillsAmount Fills amount
 * @param createdTime Created time
 */

data class OrderHistory (

    /* Apikey */
    @Json(name = "apikey")
    val apikey: kotlin.String? = null,

    /* Exchange id */
    @Json(name = "exchangeId")
    val exchangeId: kotlin.String? = null,

    /* Client order id */
    @Json(name = "clientOrderId")
    val clientOrderId: kotlin.String? = null,

    /* Symbol id exchange */
    @Json(name = "symbolIdExchange")
    val symbolIdExchange: kotlin.String? = null,

    /* Symbol id in coinapi */
    @Json(name = "symbolIdCoinapi")
    val symbolIdCoinapi: kotlin.String? = null,

    /* Amount */
    @Json(name = "amountOrder")
    val amountOrder: java.math.BigDecimal? = null,

    /* Price */
    @Json(name = "price")
    val price: java.math.BigDecimal? = null,

    /* 1-buy, 2-sell */
    @Json(name = "side")
    val side: java.math.BigDecimal? = null,

    /* Order type */
    @Json(name = "orderType")
    val orderType: kotlin.String? = null,

    /* Time in force */
    @Json(name = "timeInForce")
    val timeInForce: kotlin.String? = null,

    /* Expire time */
    @Json(name = "expireTime")
    val expireTime: java.time.LocalDate? = null,

    /* Exec inst */
    @Json(name = "execInst")
    val execInst: kotlin.collections.List<kotlin.String>? = null,

    /* Client order id format */
    @Json(name = "clientOrderIdFormatExchange")
    val clientOrderIdFormatExchange: kotlin.String? = null,

    /* Exchange order id */
    @Json(name = "exchangeOrderId")
    val exchangeOrderId: kotlin.String? = null,

    /* Amount open */
    @Json(name = "amountOpen")
    val amountOpen: java.math.BigDecimal? = null,

    /* Amount filled */
    @Json(name = "amountFilled")
    val amountFilled: java.math.BigDecimal? = null,

    /* Average price */
    @Json(name = "avgPx")
    val avgPx: java.math.BigDecimal? = null,

    /* Status */
    @Json(name = "status")
    val status: kotlin.String? = null,

    /* History status */
    @Json(name = "statusHistoryStatus")
    val statusHistoryStatus: kotlin.collections.List<kotlin.String>? = null,

    /* History status time */
    @Json(name = "statusHistoryTime")
    val statusHistoryTime: kotlin.collections.List<java.time.LocalDate>? = null,

    /* Error message */
    @Json(name = "errorMessageResult")
    val errorMessageResult: kotlin.String? = null,

    /* Error message reason */
    @Json(name = "errorMessageReason")
    val errorMessageReason: kotlin.String? = null,

    /* Error message */
    @Json(name = "errorMessageMessage")
    val errorMessageMessage: kotlin.String? = null,

    /* Fills time */
    @Json(name = "fillsTime")
    val fillsTime: kotlin.collections.List<java.time.LocalDate>? = null,

    /* Fills price */
    @Json(name = "fillsPrice")
    val fillsPrice: kotlin.collections.List<java.math.BigDecimal>? = null,

    /* Fills amount */
    @Json(name = "fillsAmount")
    val fillsAmount: kotlin.collections.List<java.math.BigDecimal>? = null,

    /* Created time */
    @Json(name = "createdTime")
    val createdTime: java.time.LocalDate? = null

)

