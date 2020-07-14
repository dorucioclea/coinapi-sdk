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
package org.openapitools.client.api

import org.openapitools.client.model.Message
import org.openapitools.client.model.Position
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object PositionsApi {

  def apply(baseUrl: String = "http://localhost:8080") = new PositionsApi(baseUrl)
}

class PositionsApi(baseUrl: String) {
  
  /**
   * Get current open positions across all or single exchange.
   * 
   * Expected answers:
   *   code 200 : Seq[Position] (Collection of positons.)
   *   code 490 : Message (Exchange is unreachable.)
   * 
   * @param exchangeId Filter the balances to the specific exchange.
   */
  def v1PositionsGet(exchangeId: Option[String] = None): ApiRequest[Seq[Position]] =
    ApiRequest[Seq[Position]](ApiMethods.GET, baseUrl, "/v1/positions", "application/json")
      .withQueryParam("exchange_id", exchangeId)
      .withSuccessResponse[Seq[Position]](200)
      .withErrorResponse[Message](490)
      



}

