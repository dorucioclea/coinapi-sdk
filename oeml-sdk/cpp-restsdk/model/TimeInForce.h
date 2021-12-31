/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.3.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * TimeInForce.h
 *
 * Order time in force options are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-tif\&quot;&gt;OEML / Starter Guide / Order parameters / Time in force&lt;/a&gt; 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_TimeInForce_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_TimeInForce_H_


#include "ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  TimeInForce
    : public ModelBase
{
public:
    TimeInForce();
    virtual ~TimeInForce();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eTimeInForce
    {
        TimeInForce_GOOD_TILL_CANCEL,
        TimeInForce_GOOD_TILL_TIME_EXCHANGE,
        TimeInForce_GOOD_TILL_TIME_OMS,
        TimeInForce_FILL_OR_KILL,
        TimeInForce_IMMEDIATE_OR_CANCEL,
    };

    eTimeInForce getValue() const;
    void setValue(eTimeInForce const value);

    protected:
        eTimeInForce m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_TimeInForce_H_ */
