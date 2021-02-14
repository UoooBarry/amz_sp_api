=begin
#Selling Partner API for Merchant Fulfillment

#The Selling Partner API for Merchant Fulfillment helps you build applications that let sellers purchase shipping for non-Prime and Prime orders using Amazon’s Buy Shipping Services.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::GetEligibleShipmentServicesResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetEligibleShipmentServicesResult' do
  before do
    # run before each test
    @instance = AmzSpApi::GetEligibleShipmentServicesResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetEligibleShipmentServicesResult' do
    it 'should create an instance of GetEligibleShipmentServicesResult' do
      expect(@instance).to be_instance_of(AmzSpApi::GetEligibleShipmentServicesResult)
    end
  end
  describe 'test attribute "shipping_service_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "rejected_shipping_service_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "temporarily_unavailable_carrier_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "terms_and_conditions_not_accepted_carrier_list"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end