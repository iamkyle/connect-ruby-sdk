# SquareConnect::OrdersApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_retrieve_orders**](OrdersApi.md#batch_retrieve_orders) | **POST** /v2/locations/{location_id}/orders/batch-retrieve | BatchRetrieveOrders
[**create_order**](OrdersApi.md#create_order) | **POST** /v2/locations/{location_id}/orders | CreateOrder
[**search_orders**](OrdersApi.md#search_orders) | **POST** /v2/orders/search | SearchOrders


# **batch_retrieve_orders**
> BatchRetrieveOrdersResponse batch_retrieve_orders(location_id, body)

BatchRetrieveOrders

Retrieves a set of [Order](#type-order)s by their IDs.  If a given Order ID does not exist, the ID is ignored instead of generating an error.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::OrdersApi.new

location_id = "location_id_example" # String | The ID of the orders' associated location.

body = SquareConnect::BatchRetrieveOrdersRequest.new # BatchRetrieveOrdersRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #BatchRetrieveOrders
  result = api_instance.batch_retrieve_orders(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OrdersApi->batch_retrieve_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the orders&#39; associated location. | 
 **body** | [**BatchRetrieveOrdersRequest**](BatchRetrieveOrdersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**BatchRetrieveOrdersResponse**](BatchRetrieveOrdersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_order**
> CreateOrderResponse create_order(location_id, body)

CreateOrder

Creates an [Order](#type-order) that can then be referenced as `order_id` in a request to the [Charge](#endpoint-charge) endpoint. Orders specify products for purchase, along with discounts, taxes, and other settings to apply to the purchase.  To associate a created order with a request to the Charge endpoint, provide the order's `id` in the `order_id` field of your request.  You cannot modify an order after you create it. If you need to modify an order, instead create a new order with modified details.  To learn more about the Orders API, see the [Orders API Overview](/products/orders/overview).

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::OrdersApi.new

location_id = "location_id_example" # String | The ID of the business location to associate the order with.

body = SquareConnect::CreateOrderRequest.new # CreateOrderRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateOrder
  result = api_instance.create_order(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OrdersApi->create_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the business location to associate the order with. | 
 **body** | [**CreateOrderRequest**](CreateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**CreateOrderResponse**](CreateOrderResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_orders**
> SearchOrdersResponse search_orders(body)

SearchOrders

Search all Orders for a merchant and return either [Orders](#type-order) or [OrderEntries](#type-orderentry).  Note that details for orders processed with Square Point of Sale while in offline mode may not be transmitted to Square for up to 72 hours. Offline orders have a `created_at` value that reflects the time the order was originally processed, not the time it was subsequently transmitted to Square. Consequently, the SearchOrder endpoint might list an offline Order chronologically between online Orders that were seen in a previous request.  When fetching additional pages using a `cursor`, the `query` must be equal to the `query` used to fetch the first page of results.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::OrdersApi.new

body = SquareConnect::SearchOrdersRequest.new # SearchOrdersRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #SearchOrders
  result = api_instance.search_orders(body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling OrdersApi->search_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchOrdersRequest**](SearchOrdersRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SearchOrdersResponse**](SearchOrdersResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



