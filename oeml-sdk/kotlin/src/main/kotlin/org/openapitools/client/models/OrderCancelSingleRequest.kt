/**
* OEML - REST API
* This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
*
* The version of the OpenAPI document: v1
* Contact: support@coinapi.io
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models


import com.squareup.moshi.Json
/**
 * Cancel single order request object.
 * @param exchangeId Exchange identifier used to identify the routing destination.
 * @param exchangeOrderId Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @param clientOrderId The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 */

data class OrderCancelSingleRequest (
    /* Exchange identifier used to identify the routing destination. */
    @Json(name = "exchange_id")
    val exchangeId: kotlin.String,
    /* Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
    @Json(name = "exchange_order_id")
    val exchangeOrderId: kotlin.String? = null,
    /* The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order. */
    @Json(name = "client_order_id")
    val clientOrderId: kotlin.String? = null
)

