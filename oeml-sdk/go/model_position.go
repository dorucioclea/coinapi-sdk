/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * API version: v1
 * Contact: support@coinapi.io
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi
// Position struct for Position
type Position struct {
	// Exchange identifier used to identify the routing destination.
	ExchangeId string `json:"exchange_id,omitempty"`
	Data []PositionData `json:"data,omitempty"`
}
