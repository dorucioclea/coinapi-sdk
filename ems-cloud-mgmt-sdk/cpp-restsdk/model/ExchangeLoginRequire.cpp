/**
 * EMS - Managed Cloud REST API
 * This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems-mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "ExchangeLoginRequire.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ExchangeLoginRequire::ExchangeLoginRequire()
{
    m_Exchange_id = utility::conversions::to_string_t("");
    m_Exchange_idIsSet = false;
    m_Location_id = utility::conversions::to_string_t("");
    m_Location_idIsSet = false;
    m_Required_parametersIsSet = false;
}

ExchangeLoginRequire::~ExchangeLoginRequire()
{
}

void ExchangeLoginRequire::validate()
{
    // TODO: implement validation
}

web::json::value ExchangeLoginRequire::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Exchange_idIsSet)
    {
        val[utility::conversions::to_string_t(U("exchange_id"))] = ModelBase::toJson(m_Exchange_id);
    }
    if(m_Location_idIsSet)
    {
        val[utility::conversions::to_string_t(U("location_id"))] = ModelBase::toJson(m_Location_id);
    }
    if(m_Required_parametersIsSet)
    {
        val[utility::conversions::to_string_t(U("required_parameters"))] = ModelBase::toJson(m_Required_parameters);
    }

    return val;
}

bool ExchangeLoginRequire::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("exchange_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("exchange_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_exchange_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_exchange_id);
            setExchangeId(refVal_exchange_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("location_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("location_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_location_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_location_id);
            setLocationId(refVal_location_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("required_parameters"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("required_parameters")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_required_parameters;
            ok &= ModelBase::fromJson(fieldValue, refVal_required_parameters);
            setRequiredParameters(refVal_required_parameters);
        }
    }
    return ok;
}

void ExchangeLoginRequire::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Exchange_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("exchange_id")), m_Exchange_id));
    }
    if(m_Location_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("location_id")), m_Location_id));
    }
    if(m_Required_parametersIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("required_parameters")), m_Required_parameters));
    }
}

bool ExchangeLoginRequire::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("exchange_id"))))
    {
        utility::string_t refVal_exchange_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("exchange_id"))), refVal_exchange_id );
        setExchangeId(refVal_exchange_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("location_id"))))
    {
        utility::string_t refVal_location_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("location_id"))), refVal_location_id );
        setLocationId(refVal_location_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("required_parameters"))))
    {
        std::vector<utility::string_t> refVal_required_parameters;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("required_parameters"))), refVal_required_parameters );
        setRequiredParameters(refVal_required_parameters);
    }
    return ok;
}

utility::string_t ExchangeLoginRequire::getExchangeId() const
{
    return m_Exchange_id;
}

void ExchangeLoginRequire::setExchangeId(const utility::string_t& value)
{
    m_Exchange_id = value;
    m_Exchange_idIsSet = true;
}

bool ExchangeLoginRequire::exchangeIdIsSet() const
{
    return m_Exchange_idIsSet;
}

void ExchangeLoginRequire::unsetExchange_id()
{
    m_Exchange_idIsSet = false;
}
utility::string_t ExchangeLoginRequire::getLocationId() const
{
    return m_Location_id;
}

void ExchangeLoginRequire::setLocationId(const utility::string_t& value)
{
    m_Location_id = value;
    m_Location_idIsSet = true;
}

bool ExchangeLoginRequire::locationIdIsSet() const
{
    return m_Location_idIsSet;
}

void ExchangeLoginRequire::unsetLocation_id()
{
    m_Location_idIsSet = false;
}
std::vector<utility::string_t>& ExchangeLoginRequire::getRequiredParameters()
{
    return m_Required_parameters;
}

void ExchangeLoginRequire::setRequiredParameters(const std::vector<utility::string_t>& value)
{
    m_Required_parameters = value;
    m_Required_parametersIsSet = true;
}

bool ExchangeLoginRequire::requiredParametersIsSet() const
{
    return m_Required_parametersIsSet;
}

void ExchangeLoginRequire::unsetRequired_parameters()
{
    m_Required_parametersIsSet = false;
}
}
}
}
}


