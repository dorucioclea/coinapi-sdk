/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.0.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrderExecutionReport.h
 *
 * The order execution report object.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_OrderExecutionReport_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_OrderExecutionReport_H_


#include "../ModelBase.h"

#include "Fills.h"
#include "OrdSide.h"
#include "OrderExecutionReport_allOf.h"
#include "OrderNewSingleRequest.h"
#include "OrdType.h"
#include <cpprest/details/basic_types.h>
#include "TimeInForce.h"
#include <vector>
#include "OrdStatus.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// The order execution report object.
/// </summary>
class  OrderExecutionReport
    : public ModelBase
{
public:
    OrderExecutionReport();
    virtual ~OrderExecutionReport();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// OrderExecutionReport members

    /// <summary>
    /// Exchange identifier used to identify the routing destination.
    /// </summary>
    utility::string_t getExchangeId() const;
    bool exchangeIdIsSet() const;
    void unsetExchange_id();

    void setExchangeId(const utility::string_t& value);

    /// <summary>
    /// The unique identifier of the order assigned by the client.
    /// </summary>
    utility::string_t getClientOrderId() const;
    bool clientOrderIdIsSet() const;
    void unsetClient_order_id();

    void setClientOrderId(const utility::string_t& value);

    /// <summary>
    /// Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.
    /// </summary>
    utility::string_t getSymbolIdExchange() const;
    bool symbolIdExchangeIsSet() const;
    void unsetSymbol_id_exchange();

    void setSymbolIdExchange(const utility::string_t& value);

    /// <summary>
    /// CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.
    /// </summary>
    utility::string_t getSymbolIdCoinapi() const;
    bool symbolIdCoinapiIsSet() const;
    void unsetSymbol_id_coinapi();

    void setSymbolIdCoinapi(const utility::string_t& value);

    /// <summary>
    /// Order quantity.
    /// </summary>
    double getAmountOrder() const;
    bool amountOrderIsSet() const;
    void unsetAmount_order();

    void setAmountOrder(double value);

    /// <summary>
    /// Order price.
    /// </summary>
    double getPrice() const;
    bool priceIsSet() const;
    void unsetPrice();

    void setPrice(double value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<OrdSide> getSide() const;
    bool sideIsSet() const;
    void unsetSide();

    void setSide(const std::shared_ptr<OrdSide>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<OrdType> getOrderType() const;
    bool orderTypeIsSet() const;
    void unsetOrder_type();

    void setOrderType(const std::shared_ptr<OrdType>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<TimeInForce> getTimeInForce() const;
    bool timeInForceIsSet() const;
    void unsetTime_in_force();

    void setTimeInForce(const std::shared_ptr<TimeInForce>& value);

    /// <summary>
    /// Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.
    /// </summary>
    std::shared_ptr<utility::datetime> getExpireTime() const;
    bool expireTimeIsSet() const;
    void unsetExpire_time();

    void setExpireTime(const std::shared_ptr<utility::datetime>& value);

    /// <summary>
    /// Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; 
    /// </summary>
    std::vector<utility::string_t>& getExecInst();
    bool execInstIsSet() const;
    void unsetExec_inst();

    void setExecInst(const std::vector<utility::string_t>& value);

    /// <summary>
    /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    /// </summary>
    utility::string_t getClientOrderIdFormatExchange() const;
    bool clientOrderIdFormatExchangeIsSet() const;
    void unsetClient_order_id_format_exchange();

    void setClientOrderIdFormatExchange(const utility::string_t& value);

    /// <summary>
    /// Unique identifier of the order assigned by the exchange or executing system.
    /// </summary>
    utility::string_t getExchangeOrderId() const;
    bool exchangeOrderIdIsSet() const;
    void unsetExchange_order_id();

    void setExchangeOrderId(const utility::string_t& value);

    /// <summary>
    /// Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60;
    /// </summary>
    double getAmountOpen() const;
    bool amountOpenIsSet() const;
    void unsetAmount_open();

    void setAmountOpen(double value);

    /// <summary>
    /// Total quantity filled.
    /// </summary>
    double getAmountFilled() const;
    bool amountFilledIsSet() const;
    void unsetAmount_filled();

    void setAmountFilled(double value);

    /// <summary>
    /// Calculated average price of all fills on this order.
    /// </summary>
    double getAvgPx() const;
    bool avgPxIsSet() const;
    void unsetAvg_px();

    void setAvgPx(double value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<OrdStatus> getStatus() const;
    bool statusIsSet() const;
    void unsetStatus();

    void setStatus(const std::shared_ptr<OrdStatus>& value);

    /// <summary>
    /// Timestamped history of order status changes.
    /// </summary>
    std::vector<std::vector<utility::string_t>>& getStatusHistory();
    bool statusHistoryIsSet() const;
    void unsetStatus_history();

    void setStatusHistory(const std::vector<std::vector<utility::string_t>>& value);

    /// <summary>
    /// Error message.
    /// </summary>
    utility::string_t getErrorMessage() const;
    bool errorMessageIsSet() const;
    void unsetError_message();

    void setErrorMessage(const utility::string_t& value);

    /// <summary>
    /// Relay fill information on working orders.
    /// </summary>
    std::vector<std::shared_ptr<Fills>>& getFills();
    bool fillsIsSet() const;
    void unsetFills();

    void setFills(const std::vector<std::shared_ptr<Fills>>& value);


protected:
    utility::string_t m_Exchange_id;
    bool m_Exchange_idIsSet;
    utility::string_t m_Client_order_id;
    bool m_Client_order_idIsSet;
    utility::string_t m_Symbol_id_exchange;
    bool m_Symbol_id_exchangeIsSet;
    utility::string_t m_Symbol_id_coinapi;
    bool m_Symbol_id_coinapiIsSet;
    double m_Amount_order;
    bool m_Amount_orderIsSet;
    double m_Price;
    bool m_PriceIsSet;
    std::shared_ptr<OrdSide> m_Side;
    bool m_SideIsSet;
    std::shared_ptr<OrdType> m_Order_type;
    bool m_Order_typeIsSet;
    std::shared_ptr<TimeInForce> m_Time_in_force;
    bool m_Time_in_forceIsSet;
    std::shared_ptr<utility::datetime> m_Expire_time;
    bool m_Expire_timeIsSet;
    std::vector<utility::string_t> m_Exec_inst;
    bool m_Exec_instIsSet;
    utility::string_t m_Client_order_id_format_exchange;
    bool m_Client_order_id_format_exchangeIsSet;
    utility::string_t m_Exchange_order_id;
    bool m_Exchange_order_idIsSet;
    double m_Amount_open;
    bool m_Amount_openIsSet;
    double m_Amount_filled;
    bool m_Amount_filledIsSet;
    double m_Avg_px;
    bool m_Avg_pxIsSet;
    std::shared_ptr<OrdStatus> m_Status;
    bool m_StatusIsSet;
    std::vector<std::vector<utility::string_t>> m_Status_history;
    bool m_Status_historyIsSet;
    utility::string_t m_Error_message;
    bool m_Error_messageIsSet;
    std::vector<std::shared_ptr<Fills>> m_Fills;
    bool m_FillsIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_OrderExecutionReport_H_ */
