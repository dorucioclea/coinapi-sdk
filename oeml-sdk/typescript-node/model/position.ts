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
import { PositionData } from './positionData';

export class Position {
    /**
    * Exchange identifier used to identify the routing destination.
    */
    'exchangeId'?: string;
    'data'?: Array<PositionData>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "exchangeId",
            "baseName": "exchange_id",
            "type": "string"
        },
        {
            "name": "data",
            "baseName": "data",
            "type": "Array<PositionData>"
        }    ];

    static getAttributeTypeMap() {
        return Position.attributeTypeMap;
    }
}

