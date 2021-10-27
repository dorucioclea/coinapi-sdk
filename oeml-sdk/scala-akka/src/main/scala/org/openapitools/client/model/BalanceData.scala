/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class BalanceData (
  /* Exchange currency code. */
  assetIdExchange: Option[String] = None,
  /* CoinAPI currency code. */
  assetIdCoinapi: Option[String] = None,
  /* Value of the current total currency balance on the exchange. */
  balance: Option[Double] = None,
  /* Value of the current available currency balance on the exchange that can be used as collateral. */
  available: Option[Double] = None,
  /* Value of the current locked currency balance by the exchange. */
  locked: Option[Double] = None,
  /* Source of the last modification.  */
  lastUpdatedBy: Option[BalanceDataEnums.LastUpdatedBy] = None,
  /* Current exchange rate to the USD for the single unit of the currency.  */
  rateUsd: Option[Double] = None,
  /* Value of the current total traded. */
  traded: Option[Double] = None
) extends ApiModel

object BalanceDataEnums {

  type LastUpdatedBy = LastUpdatedBy.Value
  object LastUpdatedBy extends Enumeration {
    val INITIALIZATION = Value("INITIALIZATION")
    val BALANCEMANAGER = Value("BALANCE_MANAGER")
    val EXCHANGE = Value("EXCHANGE")
  }

}
