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


/**
 * Cause of rejection.
 */
export type RejectReason = 'OTHER' | 'EXCHANGE_UNREACHABLE' | 'EXCHANGE_RESPONSE_TIMEOUT' | 'ORDER_ID_NOT_FOUND' | 'INVALID_TYPE' | 'METHOD_NOT_SUPPORTED' | 'JSON_ERROR';

export const RejectReason = {
    Other: 'OTHER' as RejectReason,
    ExchangeUnreachable: 'EXCHANGE_UNREACHABLE' as RejectReason,
    ExchangeResponseTimeout: 'EXCHANGE_RESPONSE_TIMEOUT' as RejectReason,
    OrderIdNotFound: 'ORDER_ID_NOT_FOUND' as RejectReason,
    InvalidType: 'INVALID_TYPE' as RejectReason,
    MethodNotSupported: 'METHOD_NOT_SUPPORTED' as RejectReason,
    JsonError: 'JSON_ERROR' as RejectReason
};

