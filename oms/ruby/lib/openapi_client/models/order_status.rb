=begin
#OMS - REST API ...@

#OMS Project

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module OpenapiClient
  class OrderStatus
    RECEIVED = "RECEIVED".freeze
    ROUTING = "ROUTING".freeze
    ROUTED = "ROUTED".freeze
    NEW = "NEW".freeze
    PENDING_CANCEL = "PENDING_CANCEL".freeze
    PARTIALLY_FILLED = "PARTIALLY_FILLED".freeze
    FILLED = "FILLED".freeze
    CANCELED = "CANCELED".freeze
    REJECTED = "REJECTED".freeze

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
      constantValues = OrderStatus.constants.select { |c| OrderStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OrderStatus" if constantValues.empty?
      value
    end
  end
end
