/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.3.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrdStatus.h
 *
 * Order statuses and the lifecycle are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-lifecycle\&quot;&gt;OEML / Starter Guide / Order Lifecycle&lt;/a&gt; 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_OrdStatus_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_OrdStatus_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  OrdStatus
    : public ModelBase
{
public:
    OrdStatus();
    virtual ~OrdStatus();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eOrdStatus
    {
        OrdStatus_RECEIVED,
        OrdStatus_ROUTING,
        OrdStatus_ROUTED,
        OrdStatus_NEW,
        OrdStatus_PENDING_CANCEL,
        OrdStatus_PARTIALLY_FILLED,
        OrdStatus_FILLED,
        OrdStatus_CANCELED,
        OrdStatus_REJECTED,
    };

    eOrdStatus getValue() const;
    void setValue(eOrdStatus const value);

    protected:
        eOrdStatus m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_OrdStatus_H_ */
