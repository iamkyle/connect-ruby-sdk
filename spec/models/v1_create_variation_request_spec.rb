=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::V1CreateVariationRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1CreateVariationRequest' do
  before do
    # run before each test
    @instance = SquareConnect::V1CreateVariationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1CreateVariationRequest' do
    it 'should create an instact of V1CreateVariationRequest' do
      expect(@instance).to be_instance_of(SquareConnect::V1CreateVariationRequest)
    end
  end
  describe 'test attribute "body"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
