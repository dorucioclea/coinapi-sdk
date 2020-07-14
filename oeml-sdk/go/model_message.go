/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * API version: v1
 * Contact: support@coinapi.io
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi
// Message struct for Message
type Message struct {
	// Type of message.
	Type string `json:"type,omitempty"`
	Severity Severity `json:"severity,omitempty"`
	// If the message related to exchange, then the identifier of the exchange will be provided.
	ExchangeId string `json:"exchange_id,omitempty"`
	// Message text.
	Message string `json:"message,omitempty"`
}
