/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrderNewSingleRequest.h
 *
 * The new order message.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_OrderNewSingleRequest_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_OrderNewSingleRequest_H_


#include "../ModelBase.h"

#include "OrdSide.h"
#include "OrdType.h"
#include <cpprest/details/basic_types.h>
#include "TimeInForce.h"
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// The new order message.
/// </summary>
class  OrderNewSingleRequest
    : public ModelBase
{
public:
    OrderNewSingleRequest();
    virtual ~OrderNewSingleRequest();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// OrderNewSingleRequest members

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
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_OrderNewSingleRequest_H_ */
