/**
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
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

import org.openapitools.client.models.Fills
import org.openapitools.client.models.OrdStatus

import com.squareup.moshi.Json

/**
 * The order execution report message.
 *
 * @param clientOrderIdFormatExchange The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
 * @param amountOpen Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
 * @param amountFilled Total quantity filled.
 * @param status 
 * @param exchangeOrderId Unique identifier of the order assigned by the exchange or executing system.
 * @param avgPx Calculated average price of all fills on this order.
 * @param statusHistory Timestamped history of order status changes.
 * @param errorMessage Error message.
 * @param fills Relay fill information on working orders.
 */

data class OrderExecutionReportAllOf (

    /* The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. */
    @Json(name = "client_order_id_format_exchange")
    val clientOrderIdFormatExchange: kotlin.String,

    /* Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled` */
    @Json(name = "amount_open")
    val amountOpen: java.math.BigDecimal,

    /* Total quantity filled. */
    @Json(name = "amount_filled")
    val amountFilled: java.math.BigDecimal,

    @Json(name = "status")
    val status: OrdStatus,

    /* Unique identifier of the order assigned by the exchange or executing system. */
    @Json(name = "exchange_order_id")
    val exchangeOrderId: kotlin.String? = null,

    /* Calculated average price of all fills on this order. */
    @Json(name = "avg_px")
    val avgPx: java.math.BigDecimal? = null,

    /* Timestamped history of order status changes. */
    @Json(name = "status_history")
    val statusHistory: kotlin.collections.List<kotlin.collections.List<kotlin.String>>? = null,

    /* Error message. */
    @Json(name = "error_message")
    val errorMessage: kotlin.String? = null,

    /* Relay fill information on working orders. */
    @Json(name = "fills")
    val fills: kotlin.collections.List<Fills>? = null

)

