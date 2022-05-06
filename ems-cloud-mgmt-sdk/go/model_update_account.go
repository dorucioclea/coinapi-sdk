/*
EMS - Managed Cloud REST API

This section will provide necessary information about the `CoinAPI EMS Managed Cloud REST API` protocol.  <br/><br/> This API is used to manage the overall deployment of **Execution Management System API** (`EMS API`) software,  which means that in this API, you define the accounts, credentials, and configurations for the order destinations or identify the CoinAPI endpoints where you need to connect to access the `EMS API`.  <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)   ### Endpoints <table>   <thead>     <tr>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Production</td>       <td><code>https://ems-mgmt.coinapi.io/</code></td>     </tr>     <tr>       <td>Sandbox</td>       <td><code>https://ems-mgmt-sandbox.coinapi.io/</code></td>     </tr>   </tbody> </table>  ### Authentication  To use resources that require authorized access, you will need to provide an API key to us when making HTTP requests.  There are 2 methods for passing the API key to us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key`  2. Query string parameter named `apikey`  #### Custom authorization header  You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside>  #### Query string authorization parameter  You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request.  Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all accounts, then your query string should look like this:  <br/><br/> `GET /v1/accounts?apikey=73034021-THIS-IS-SAMPLE-KEY`  <aside class=\"notice\"> Query string method may be more practical for development activities. </aside> 

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// UpdateAccount struct for UpdateAccount
type UpdateAccount struct {
	// Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  <code>BITSTAMP</code> <code>BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70`</code> <code>BITSTAMP/2574</code> Allowed separators between the exchange identifier and the tag: <code>~/.,:;\\!@#$%^&*-_+=.</code> 
	ExchangeId *string `json:"exchange_id,omitempty"`
	// Parameters required to log into the exchange
	Parameters []KeyValue `json:"parameters,omitempty"`
}

// NewUpdateAccount instantiates a new UpdateAccount object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUpdateAccount() *UpdateAccount {
	this := UpdateAccount{}
	return &this
}

// NewUpdateAccountWithDefaults instantiates a new UpdateAccount object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUpdateAccountWithDefaults() *UpdateAccount {
	this := UpdateAccount{}
	return &this
}

// GetExchangeId returns the ExchangeId field value if set, zero value otherwise.
func (o *UpdateAccount) GetExchangeId() string {
	if o == nil || o.ExchangeId == nil {
		var ret string
		return ret
	}
	return *o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UpdateAccount) GetExchangeIdOk() (*string, bool) {
	if o == nil || o.ExchangeId == nil {
		return nil, false
	}
	return o.ExchangeId, true
}

// HasExchangeId returns a boolean if a field has been set.
func (o *UpdateAccount) HasExchangeId() bool {
	if o != nil && o.ExchangeId != nil {
		return true
	}

	return false
}

// SetExchangeId gets a reference to the given string and assigns it to the ExchangeId field.
func (o *UpdateAccount) SetExchangeId(v string) {
	o.ExchangeId = &v
}

// GetParameters returns the Parameters field value if set, zero value otherwise.
func (o *UpdateAccount) GetParameters() []KeyValue {
	if o == nil || o.Parameters == nil {
		var ret []KeyValue
		return ret
	}
	return o.Parameters
}

// GetParametersOk returns a tuple with the Parameters field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UpdateAccount) GetParametersOk() ([]KeyValue, bool) {
	if o == nil || o.Parameters == nil {
		return nil, false
	}
	return o.Parameters, true
}

// HasParameters returns a boolean if a field has been set.
func (o *UpdateAccount) HasParameters() bool {
	if o != nil && o.Parameters != nil {
		return true
	}

	return false
}

// SetParameters gets a reference to the given []KeyValue and assigns it to the Parameters field.
func (o *UpdateAccount) SetParameters(v []KeyValue) {
	o.Parameters = v
}

func (o UpdateAccount) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.ExchangeId != nil {
		toSerialize["exchange_id"] = o.ExchangeId
	}
	if o.Parameters != nil {
		toSerialize["parameters"] = o.Parameters
	}
	return json.Marshal(toSerialize)
}

type NullableUpdateAccount struct {
	value *UpdateAccount
	isSet bool
}

func (v NullableUpdateAccount) Get() *UpdateAccount {
	return v.value
}

func (v *NullableUpdateAccount) Set(val *UpdateAccount) {
	v.value = val
	v.isSet = true
}

func (v NullableUpdateAccount) IsSet() bool {
	return v.isSet
}

func (v *NullableUpdateAccount) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUpdateAccount(val *UpdateAccount) *NullableUpdateAccount {
	return &NullableUpdateAccount{value: val, isSet: true}
}

func (v NullableUpdateAccount) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUpdateAccount) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


