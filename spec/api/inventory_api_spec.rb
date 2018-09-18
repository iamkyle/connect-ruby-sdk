=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SquareConnect::InventoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InventoryApi' do
  before do
    # run before each test
    @instance = SquareConnect::InventoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InventoryApi' do
    it 'should create an instact of InventoryApi' do
      expect(@instance).to be_instance_of(SquareConnect::InventoryApi)
    end
  end

  # unit tests for batch_change_inventory
  # BatchChangeInventory
  # Applies new adjustments and counts to inventory. The response will contain the current calculated counts for all objects referenced in the request.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [BatchChangeInventoryResponse]
  describe 'batch_change_inventory test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for batch_retrieve_inventory_changes
  # BatchRetrieveInventoryChanges
  # Retrieves historical physical counts and adjustments. The set of physical counts and adjustments to return may be limited along several dimensions. The results appear in ascending order of server timestamp (oldest first), and are paginated. This endpoint is intended as a catch-all for queries that cannot be handled by the previous simpler endpoints.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [BatchRetrieveInventoryChangesResponse]
  describe 'batch_retrieve_inventory_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for batch_retrieve_inventory_counts
  # BatchRetrieveInventoryCounts
  # Retrieves current counts for a set of [CatalogObject](#type-catalogobject)s at a set of [Location](#type-location)s. If &#x60;updated_at&#x60; is specified, only counts that have changed since that time (based on the server timestamp for the most recent change) are returned. This allows clients to perform a \&quot;sync\&quot; operation, for example in response to receiving a Webhook. The results are sorted by [CatalogObject](#type-catalogobject) id and are paginated.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [BatchRetrieveInventoryCountsResponse]
  describe 'batch_retrieve_inventory_counts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_inventory_adjustment
  # RetrieveInventoryAdjustment
  # Retrieves the [InventoryAdjustment](#type-inventoryadjustment) with the given &#x60;adjustment_id&#x60;.
  # @param adjustment_id The unique id of the [InventoryAdjustment](#type-inventoryadjustment) to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [RetrieveInventoryAdjustmentResponse]
  describe 'retrieve_inventory_adjustment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_inventory_changes
  # RetrieveInventoryChanges
  # Retrieves the set of inventory physical counts and adjustments for a given [CatalogObject](#type-catalogobject) at a given set of [Location](#type-location)s. The results appear in descending order of &#x60;occurred_at&#x60;/&#x60;counted_at&#x60; timestamp (newest first), and are paginated. There is no limits on how far back the caller can page. This endpoint is useful when displaying recent changes for a specific item. For more sophisticated queries, use a batch endpoint.
  # @param catalog_object_id The [CatalogObject](#type-catalogobject) id to look up.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location_ids The [Location](#type-location) ids to look up, as a comma-separated list. An empty list queries all locations.
  # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
  # @return [RetrieveInventoryChangesResponse]
  describe 'retrieve_inventory_changes test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_inventory_count
  # RetrieveInventoryCount
  # Retrieves the current (calculated) stock count for a given [CatalogObject](#type-catalogobject) at a given set of [Location](#type-location)s. The response may be paginated when the number of locations is large. The sort order of current counts in the response is unspecified. For more sophisticated queries, use a batch endpoint.
  # @param catalog_object_id The [CatalogObject](#type-catalogobject) id to look up.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location_ids The [Location](#type-location) ids to look up, as a comma-separated list. An empty list queries all locations.
  # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
  # @return [RetrieveInventoryCountResponse]
  describe 'retrieve_inventory_count test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retrieve_inventory_physical_count
  # RetrieveInventoryPhysicalCount
  # Retrieves the [InventoryPhysicalCount](#type-inventoryphysicalcount) with the given &#x60;physical_count_id&#x60;.
  # @param physical_count_id The unique id of the [InventoryPhysicalCount](#type-inventoryphysicalcount) to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [RetrieveInventoryPhysicalCountResponse]
  describe 'retrieve_inventory_physical_count test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
