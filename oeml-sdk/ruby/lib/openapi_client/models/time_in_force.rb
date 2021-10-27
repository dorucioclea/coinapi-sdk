=begin
#OEML - REST API

#This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module OpenapiClient
  class TimeInForce
    GOOD_TILL_CANCEL = "GOOD_TILL_CANCEL".freeze
    GOOD_TILL_TIME_EXCHANGE = "GOOD_TILL_TIME_EXCHANGE".freeze
    GOOD_TILL_TIME_OMS = "GOOD_TILL_TIME_OMS".freeze
    FILL_OR_KILL = "FILL_OR_KILL".freeze
    IMMEDIATE_OR_CANCEL = "IMMEDIATE_OR_CANCEL".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TimeInForce.constants.select { |c| TimeInForce::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TimeInForce" if constantValues.empty?
      value
    end
  end
end
