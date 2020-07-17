/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 4.3.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * Severity.h
 *
 * Severity of the message.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Severity_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Severity_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  Severity
    : public ModelBase
{
public:
    Severity();
    virtual ~Severity();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eSeverity
    {
        Severity_INFO,
        Severity_WARNING,
        Severity_ERROR,
    };

    eSeverity getValue() const;
    void setValue(eSeverity const value);

    protected:
        eSeverity m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Severity_H_ */
