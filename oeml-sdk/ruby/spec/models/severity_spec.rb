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

# Unit tests for OpenapiClient::Severity
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Severity' do
  before do
    # run before each test
    @instance = OpenapiClient::Severity.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Severity' do
    it 'should create an instance of Severity' do
      expect(@instance).to be_instance_of(OpenapiClient::Severity)
    end
  end
end
