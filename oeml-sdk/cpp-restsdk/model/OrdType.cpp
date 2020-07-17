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



#include "OrdType.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



OrdType::OrdType()
{
}

OrdType::~OrdType()
{
}

void OrdType::validate()
{
    // TODO: implement validation
}

web::json::value OrdType::toJson() const
{
    web::json::value val = web::json::value::object();

    
    if (m_value == eOrdType::OrdType_LIMIT) val = web::json::value::string(U("LIMIT"));

    return val;
}

bool OrdType::fromJson(const web::json::value& val)
{
    auto s = val.as_string();

    
    if (s == utility::conversions::to_string_t("LIMIT")) m_value = eOrdType::OrdType_LIMIT;
    return true;
}

void OrdType::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    utility::string_t s;

    
    if (m_value == eOrdType::OrdType_LIMIT) s = utility::conversions::to_string_t("LIMIT");

    multipart->add(ModelBase::toHttpContent(namePrefix, s));
}

bool OrdType::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    {
        utility::string_t s;
        ok = ModelBase::fromHttpContent(multipart->getContent(namePrefix), s);
        eOrdType v;

        
        if (s == utility::conversions::to_string_t("LIMIT")) v = eOrdType::OrdType_LIMIT;

        setValue(v);
    }
    return ok;
}

OrdType::eOrdType OrdType::getValue() const
{
   return m_value;
}

void OrdType::setValue(OrdType::eOrdType const value)
{
   m_value = value;
}


}
}
}
}


