/**
 * OMS - REST API ...@
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from '../api';
import { OrderStatus } from './orderStatus';
import { TimeInForce } from './timeInForce';

export class OrderLive {
    /**
    * Result type name
    */
    'type'?: string;
    /**
    * Exchange name
    */
    'exchangeId'?: string;
    /**
    * Client unique identifier for the trade.
    */
    'id'?: string;
    /**
    * Hash client id
    */
    'clientOrderIdFormatExchange'?: string;
    /**
    * Exchange order id
    */
    'exchangeOrderId'?: string;
    /**
    * Amount open
    */
    'amountOpen'?: number;
    /**
    * Amount filled
    */
    'amountFilled'?: number;
    'status'?: OrderStatus;
    /**
    * History of order status changes
    */
    'timeOrder'?: Array<Array<string>>;
    /**
    * Error message
    */
    'errorMessage'?: string;
    /**
    * Client unique identifier for the trade.
    */
    'clientOrderId'?: string;
    /**
    * The symbol of the order.
    */
    'symbolExchange'?: string;
    /**
    * The CoinAPI symbol of the order.
    */
    'symbolCoinapi'?: string;
    /**
    * Quoted decimal amount to purchase.
    */
    'amountOrder'?: number;
    /**
    * Quoted decimal amount to spend per unit.
    */
    'price'?: number;
    /**
    * Buy or Sell
    */
    'side'?: OrderLive.SideEnum;
    /**
    * The order type.
    */
    'orderType'?: OrderLive.OrderTypeEnum;
    'timeInForce'?: TimeInForce;
    /**
    * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
    */
    'expireTime'?: string;
    /**
    * TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
    */
    'execInst'?: Array<OrderLive.ExecInstEnum>;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "type",
            "baseName": "type",
            "type": "string"
        },
        {
            "name": "exchangeId",
            "baseName": "exchange_id",
            "type": "string"
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "string"
        },
        {
            "name": "clientOrderIdFormatExchange",
            "baseName": "client_order_id_format_exchange",
            "type": "string"
        },
        {
            "name": "exchangeOrderId",
            "baseName": "exchange_order_id",
            "type": "string"
        },
        {
            "name": "amountOpen",
            "baseName": "amount_open",
            "type": "number"
        },
        {
            "name": "amountFilled",
            "baseName": "amount_filled",
            "type": "number"
        },
        {
            "name": "status",
            "baseName": "status",
            "type": "OrderStatus"
        },
        {
            "name": "timeOrder",
            "baseName": "time_order",
            "type": "Array<Array<string>>"
        },
        {
            "name": "errorMessage",
            "baseName": "error_message",
            "type": "string"
        },
        {
            "name": "clientOrderId",
            "baseName": "client_order_id",
            "type": "string"
        },
        {
            "name": "symbolExchange",
            "baseName": "symbol_exchange",
            "type": "string"
        },
        {
            "name": "symbolCoinapi",
            "baseName": "symbol_coinapi",
            "type": "string"
        },
        {
            "name": "amountOrder",
            "baseName": "amount_order",
            "type": "number"
        },
        {
            "name": "price",
            "baseName": "price",
            "type": "number"
        },
        {
            "name": "side",
            "baseName": "side",
            "type": "OrderLive.SideEnum"
        },
        {
            "name": "orderType",
            "baseName": "order_type",
            "type": "OrderLive.OrderTypeEnum"
        },
        {
            "name": "timeInForce",
            "baseName": "time_in_force",
            "type": "TimeInForce"
        },
        {
            "name": "expireTime",
            "baseName": "expire_time",
            "type": "string"
        },
        {
            "name": "execInst",
            "baseName": "exec_inst",
            "type": "Array<OrderLive.ExecInstEnum>"
        }    ];

    static getAttributeTypeMap() {
        return OrderLive.attributeTypeMap;
    }
}

export namespace OrderLive {
    export enum SideEnum {
        BUY = <any> 'BUY',
        SELL = <any> 'SELL'
    }
    export enum OrderTypeEnum {
        LIMIT = <any> 'LIMIT'
    }
    export enum ExecInstEnum {
        MAKERORCANCEL = <any> 'MAKER_OR_CANCEL'
    }
}
