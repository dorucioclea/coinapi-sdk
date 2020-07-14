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
package org.openapitools.client.model

import org.openapitools.client.core.ApiModel

case class Message (
  /* Type of message. */
  `type`: Option[String] = None,
  severity: Option[Severity] = None,
  /* If the message related to exchange, then the identifier of the exchange will be provided. */
  exchangeId: Option[String] = None,
  /* Message text. */
  message: Option[String] = None
) extends ApiModel


