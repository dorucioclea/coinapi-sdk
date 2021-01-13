/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';
import { Severity } from './severity';

export class Message {
    /**
    * Type of message.
    */
    'type'?: string;
    'severity'?: Severity;
    /**
    * If the message related to exchange, then the identifier of the exchange will be provided.
    */
    'exchangeId'?: string;
    /**
    * Message text.
    */
    'message'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "type",
            "baseName": "type",
            "type": "string"
        },
        {
            "name": "severity",
            "baseName": "severity",
            "type": "Severity"
        },
        {
            "name": "exchangeId",
            "baseName": "exchange_id",
            "type": "string"
        },
        {
            "name": "message",
            "baseName": "message",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return Message.attributeTypeMap;
    }
}

