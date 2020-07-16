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
require 'date'

# Unit tests for OpenapiClient::OrdSide
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdSide' do
  before do
    # run before each test
    @instance = OpenapiClient::OrdSide.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdSide' do
    it 'should create an instance of OrdSide' do
      expect(@instance).to be_instance_of(OpenapiClient::OrdSide)
    end
  end
end
