=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::BusinessHoursPeriod
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BusinessHoursPeriod' do
  before do
    # run before each test
    @instance = SquareConnect::BusinessHoursPeriod.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BusinessHoursPeriod' do
    it 'should create an instact of BusinessHoursPeriod' do
      expect(@instance).to be_instance_of(SquareConnect::BusinessHoursPeriod)
    end
  end
  describe 'test attribute "day_of_week"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.day_of_week = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "start_local_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_local_time"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

