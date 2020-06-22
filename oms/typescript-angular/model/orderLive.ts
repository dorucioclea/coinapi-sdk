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
import { OrderStatus } from './orderStatus';
import { TimeInForce } from './timeInForce';


export interface OrderLive { 
    /**
     * Result type name
     */
    type?: string;
    /**
     * Exchange name
     */
    exchange_id?: string;
    /**
     * Client unique identifier for the trade.
     */
    id?: string;
    /**
     * Hash client id
     */
    client_order_id_format_exchange?: string;
    /**
     * Exchange order id
     */
    exchange_order_id?: string;
    /**
     * Amount open
     */
    amount_open?: number;
    /**
     * Amount filled
     */
    amount_filled?: number;
    status?: OrderStatus;
    /**
     * History of order status changes
     */
    time_order?: Array<Array<string>>;
    /**
     * Error message
     */
    error_message?: string;
    /**
     * Client unique identifier for the trade.
     */
    client_order_id?: string;
    /**
     * The symbol of the order.
     */
    symbol_exchange?: string;
    /**
     * The CoinAPI symbol of the order.
     */
    symbol_coinapi?: string;
    /**
     * Quoted decimal amount to purchase.
     */
    amount_order?: number;
    /**
     * Quoted decimal amount to spend per unit.
     */
    price?: number;
    /**
     * Buy or Sell
     */
    side?: OrderLive.SideEnum;
    /**
     * The order type.
     */
    order_type?: OrderLive.OrderTypeEnum;
    time_in_force?: TimeInForce;
    /**
     * Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
     */
    expire_time?: string;
    /**
     * TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
     */
    exec_inst?: Array<OrderLive.ExecInstEnum>;
}
export namespace OrderLive {
    export type SideEnum = 'BUY' | 'SELL';
    export const SideEnum = {
        BUY: 'BUY' as SideEnum,
        SELL: 'SELL' as SideEnum
    };
    export type OrderTypeEnum = 'LIMIT';
    export const OrderTypeEnum = {
        LIMIT: 'LIMIT' as OrderTypeEnum
    };
    export type ExecInstEnum = 'MAKER_OR_CANCEL';
    export const ExecInstEnum = {
        MAKERORCANCEL: 'MAKER_OR_CANCEL' as ExecInstEnum
    };
}


