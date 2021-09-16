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
 *
 */

import ApiClient from '../ApiClient';

/**
 * The OrderCancelSingleRequest model module.
 * @module model/OrderCancelSingleRequest
 * @version v1
 */
class OrderCancelSingleRequest {
    /**
     * Constructs a new <code>OrderCancelSingleRequest</code>.
     * Cancel single order request object.
     * @alias module:model/OrderCancelSingleRequest
     * @param exchangeId {String} Exchange identifier used to identify the routing destination.
     */
    constructor(exchangeId) { 
        
        OrderCancelSingleRequest.initialize(this, exchangeId);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, exchangeId) { 
        obj['exchange_id'] = exchangeId;
    }

    /**
     * Constructs a <code>OrderCancelSingleRequest</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/OrderCancelSingleRequest} obj Optional instance to populate.
     * @return {module:model/OrderCancelSingleRequest} The populated <code>OrderCancelSingleRequest</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new OrderCancelSingleRequest();

            if (data.hasOwnProperty('exchange_id')) {
                obj['exchange_id'] = ApiClient.convertToType(data['exchange_id'], 'String');
            }
            if (data.hasOwnProperty('exchange_order_id')) {
                obj['exchange_order_id'] = ApiClient.convertToType(data['exchange_order_id'], 'String');
            }
            if (data.hasOwnProperty('client_order_id')) {
                obj['client_order_id'] = ApiClient.convertToType(data['client_order_id'], 'String');
            }
        }
        return obj;
    }


}

/**
 * Exchange identifier used to identify the routing destination.
 * @member {String} exchange_id
 */
OrderCancelSingleRequest.prototype['exchange_id'] = undefined;

/**
 * Unique identifier of the order assigned by the exchange or executing system. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @member {String} exchange_order_id
 */
OrderCancelSingleRequest.prototype['exchange_order_id'] = undefined;

/**
 * The unique identifier of the order assigned by the client. One of the properties (`exchange_order_id`, `client_order_id`) is required to identify the new order.
 * @member {String} client_order_id
 */
OrderCancelSingleRequest.prototype['client_order_id'] = undefined;






export default OrderCancelSingleRequest;

