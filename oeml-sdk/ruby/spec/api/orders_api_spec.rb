=begin
#OEML - REST API

#This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::OrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdersApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::OrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersApi' do
    it 'should create an instance of OrdersApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::OrdersApi)
    end
  end

  # unit tests for v1_orders_cancel_all_post
  # Cancel all orders request
  # This request cancels all open orders on single specified exchange.
  # @param order_cancel_all_request OrderCancelAllRequest object.
  # @param [Hash] opts the optional parameters
  # @return [Message]
  describe 'v1_orders_cancel_all_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_orders_cancel_post
  # Cancel order request
  # Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
  # @param order_cancel_single_request OrderCancelSingleRequest object.
  # @param [Hash] opts the optional parameters
  # @return [OrderExecutionReport]
  describe 'v1_orders_cancel_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_orders_get
  # Get open orders
  # Get last execution reports for open orders across all or single exchange.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :exchange_id Filter the open orders to the specific exchange.
  # @return [Array<OrderExecutionReport>]
  describe 'v1_orders_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_orders_post
  # Send new order
  # This request creating new order for the specific exchange.
  # @param order_new_single_request OrderNewSingleRequest object.
  # @param [Hash] opts the optional parameters
  # @return [OrderExecutionReport]
  describe 'v1_orders_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_orders_status_client_order_id_get
  # Get order execution report
  # Get the last order execution report for the specified order. The requested order does not need to be active or opened.
  # @param client_order_id The unique identifier of the order assigned by the client.
  # @param [Hash] opts the optional parameters
  # @return [OrderExecutionReport]
  describe 'v1_orders_status_client_order_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
