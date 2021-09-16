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
 * The BalanceData model module.
 * @module model/BalanceData
 * @version v1
 */
class BalanceData {
    /**
     * Constructs a new <code>BalanceData</code>.
     * @alias module:model/BalanceData
     */
    constructor() { 
        
        BalanceData.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>BalanceData</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/BalanceData} obj Optional instance to populate.
     * @return {module:model/BalanceData} The populated <code>BalanceData</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new BalanceData();

            if (data.hasOwnProperty('asset_id_exchange')) {
                obj['asset_id_exchange'] = ApiClient.convertToType(data['asset_id_exchange'], 'String');
            }
            if (data.hasOwnProperty('asset_id_coinapi')) {
                obj['asset_id_coinapi'] = ApiClient.convertToType(data['asset_id_coinapi'], 'String');
            }
            if (data.hasOwnProperty('balance')) {
                obj['balance'] = ApiClient.convertToType(data['balance'], 'Number');
            }
            if (data.hasOwnProperty('available')) {
                obj['available'] = ApiClient.convertToType(data['available'], 'Number');
            }
            if (data.hasOwnProperty('locked')) {
                obj['locked'] = ApiClient.convertToType(data['locked'], 'Number');
            }
            if (data.hasOwnProperty('last_updated_by')) {
                obj['last_updated_by'] = ApiClient.convertToType(data['last_updated_by'], 'String');
            }
            if (data.hasOwnProperty('rate_usd')) {
                obj['rate_usd'] = ApiClient.convertToType(data['rate_usd'], 'Number');
            }
            if (data.hasOwnProperty('traded')) {
                obj['traded'] = ApiClient.convertToType(data['traded'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * Exchange currency code.
 * @member {String} asset_id_exchange
 */
BalanceData.prototype['asset_id_exchange'] = undefined;

/**
 * CoinAPI currency code.
 * @member {String} asset_id_coinapi
 */
BalanceData.prototype['asset_id_coinapi'] = undefined;

/**
 * Value of the current total currency balance on the exchange.
 * @member {Number} balance
 */
BalanceData.prototype['balance'] = undefined;

/**
 * Value of the current available currency balance on the exchange that can be used as collateral.
 * @member {Number} available
 */
BalanceData.prototype['available'] = undefined;

/**
 * Value of the current locked currency balance by the exchange.
 * @member {Number} locked
 */
BalanceData.prototype['locked'] = undefined;

/**
 * Source of the last modification. 
 * @member {module:model/BalanceData.LastUpdatedByEnum} last_updated_by
 */
BalanceData.prototype['last_updated_by'] = undefined;

/**
 * Current exchange rate to the USD for the single unit of the currency. 
 * @member {Number} rate_usd
 */
BalanceData.prototype['rate_usd'] = undefined;

/**
 * Value of the current total traded.
 * @member {Number} traded
 */
BalanceData.prototype['traded'] = undefined;





/**
 * Allowed values for the <code>last_updated_by</code> property.
 * @enum {String}
 * @readonly
 */
BalanceData['LastUpdatedByEnum'] = {

    /**
     * value: "INITIALIZATION"
     * @const
     */
    "INITIALIZATION": "INITIALIZATION",

    /**
     * value: "BALANCE_MANAGER"
     * @const
     */
    "BALANCE_MANAGER": "BALANCE_MANAGER",

    /**
     * value: "EXCHANGE"
     * @const
     */
    "EXCHANGE": "EXCHANGE"
};



export default BalanceData;

