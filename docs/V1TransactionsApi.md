# SquareConnect::V1TransactionsApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_refund**](V1TransactionsApi.md#create_refund) | **POST** /v1/{location_id}/refunds | CreateRefund
[**list_bank_accounts**](V1TransactionsApi.md#list_bank_accounts) | **GET** /v1/{location_id}/bank-accounts | ListBankAccounts
[**list_orders**](V1TransactionsApi.md#list_orders) | **GET** /v1/{location_id}/orders | ListOrders
[**list_payments**](V1TransactionsApi.md#list_payments) | **GET** /v1/{location_id}/payments | ListPayments
[**list_refunds**](V1TransactionsApi.md#list_refunds) | **GET** /v1/{location_id}/refunds | ListRefunds
[**list_settlements**](V1TransactionsApi.md#list_settlements) | **GET** /v1/{location_id}/settlements | ListSettlements
[**retrieve_bank_account**](V1TransactionsApi.md#retrieve_bank_account) | **GET** /v1/{location_id}/bank-accounts/{bank_account_id} | RetrieveBankAccount
[**retrieve_order**](V1TransactionsApi.md#retrieve_order) | **GET** /v1/{location_id}/orders/{order_id} | RetrieveOrder
[**retrieve_payment**](V1TransactionsApi.md#retrieve_payment) | **GET** /v1/{location_id}/payments/{payment_id} | RetrievePayment
[**retrieve_settlement**](V1TransactionsApi.md#retrieve_settlement) | **GET** /v1/{location_id}/settlements/{settlement_id} | RetrieveSettlement
[**update_order**](V1TransactionsApi.md#update_order) | **PUT** /v1/{location_id}/orders/{order_id} | UpdateOrder


# **create_refund**
> V1Refund create_refund(location_id, body)

CreateRefund

Issues a refund for a previously processed payment. You must issue a refund within 60 days of the associated payment.  You cannot issue a partial refund for a split tender payment. You must instead issue a full or partial refund for a particular tender, by providing the applicable tender id to the V1CreateRefund endpoint. Issuing a full refund for a split tender payment refunds all tenders associated with the payment.  Issuing a refund for a card payment is not reversible. For development purposes, you can create fake cash payments in Square Point of Sale and refund them.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the original payment's associated location.

body = SquareConnect::V1CreateRefundRequest.new # V1CreateRefundRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #CreateRefund
  result = api_instance.create_refund(location_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->create_refund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the original payment&#39;s associated location. | 
 **body** | [**V1CreateRefundRequest**](V1CreateRefundRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Refund**](V1Refund.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_bank_accounts**
> Array&lt;V1BankAccount&gt; list_bank_accounts(location_id)

ListBankAccounts

Provides non-confidential details for all of a location's associated bank accounts. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list bank accounts for.


begin
  #ListBankAccounts
  result = api_instance.list_bank_accounts(location_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->list_bank_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list bank accounts for. | 

### Return type

[**Array&lt;V1BankAccount&gt;**](V1BankAccount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_orders**
> Array&lt;V1Order&gt; list_orders(location_id, opts)

ListOrders

Provides summary information for a merchant's online store orders.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list online store orders for.

opts = { 
  order: "order_example", # String | TThe order in which payments are listed in the response.
  limit: 56, # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListOrders
  result = api_instance.list_orders(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->list_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list online store orders for. | 
 **order** | **String**| TThe order in which payments are listed in the response. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Order&gt;**](V1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_payments**
> Array&lt;V1Payment&gt; list_payments(location_id, opts)

ListPayments

Provides summary information for all payments taken for a given Square account during a date range. Date ranges cannot exceed 1 year in length. See Date ranges for details of inclusive and exclusive dates.  *Note**: Details for payments processed with Square Point of Sale while in offline mode may not be transmitted to Square for up to 72 hours. Offline payments have a `created_at` value that reflects the time the payment was originally processed, not the time it was subsequently transmitted to Square. Consequently, the ListPayments endpoint might list an offline payment chronologically between online payments that were seen in a previous request.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business's locations.

opts = { 
  order: "order_example", # String | The order in which payments are listed in the response.
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time.
  limit: 56, # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
  batch_token: "batch_token_example", # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
  include_partial: true # BOOLEAN | Indicates whether or not to include partial payments in the response. Partial payments will have the tenders collected so far, but the itemizations will be empty until the payment is completed.
}

begin
  #ListPayments
  result = api_instance.list_payments(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->list_payments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list payments for. If you specify me, this endpoint returns payments aggregated from all of the business&#39;s locations. | 
 **order** | **String**| The order in which payments are listed in the response. | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 
 **include_partial** | **BOOLEAN**| Indicates whether or not to include partial payments in the response. Partial payments will have the tenders collected so far, but the itemizations will be empty until the payment is completed. | [optional] 

### Return type

[**Array&lt;V1Payment&gt;**](V1Payment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_refunds**
> Array&lt;V1Refund&gt; list_refunds(location_id, opts)

ListRefunds

Provides the details for all refunds initiated by a merchant or any of the merchant's mobile staff during a date range. Date ranges cannot exceed one year in length.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list refunds for.

opts = { 
  order: "order_example", # String | TThe order in which payments are listed in the response.
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time.
  limit: 56, # Integer | The approximate number of refunds to return in a single response. Default: 100. Max: 200. Response may contain more results than the prescribed limit when refunds are made simultaneously to multiple tenders in a payment or when refunds are generated in an exchange to account for the value of returned goods.
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListRefunds
  result = api_instance.list_refunds(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->list_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list refunds for. | 
 **order** | **String**| TThe order in which payments are listed in the response. | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **Integer**| The approximate number of refunds to return in a single response. Default: 100. Max: 200. Response may contain more results than the prescribed limit when refunds are made simultaneously to multiple tenders in a payment or when refunds are generated in an exchange to account for the value of returned goods. | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Refund&gt;**](V1Refund.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_settlements**
> Array&lt;V1Settlement&gt; list_settlements(location_id, opts)

ListSettlements

Provides summary information for all deposits and withdrawals initiated by Square to a linked bank account during a date range. Date ranges cannot exceed one year in length.  *Note**: the ListSettlements endpoint does not provide entry information.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the location to list settlements for. If you specify me, this endpoint returns payments aggregated from all of the business's locations.

opts = { 
  order: "order_example", # String | TThe order in which payments are listed in the response.
  begin_time: "begin_time_example", # String | The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year.
  end_time: "end_time_example", # String | The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time.
  limit: 56, # Integer | The maximum number of payments to return in a single response. This value cannot exceed 200.
  status: "status_example", # String | Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED).
  batch_token: "batch_token_example" # String | A pagination cursor to retrieve the next set of results for your original query to the endpoint.
}

begin
  #ListSettlements
  result = api_instance.list_settlements(location_id, opts)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->list_settlements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the location to list settlements for. If you specify me, this endpoint returns payments aggregated from all of the business&#39;s locations. | 
 **order** | **String**| TThe order in which payments are listed in the response. | [optional] 
 **begin_time** | **String**| The beginning of the requested reporting period, in ISO 8601 format. If this value is before January 1, 2013 (2013-01-01T00:00:00Z), this endpoint returns an error. Default value: The current time minus one year. | [optional] 
 **end_time** | **String**| The end of the requested reporting period, in ISO 8601 format. If this value is more than one year greater than begin_time, this endpoint returns an error. Default value: The current time. | [optional] 
 **limit** | **Integer**| The maximum number of payments to return in a single response. This value cannot exceed 200. | [optional] 
 **status** | **String**| Provide this parameter to retrieve only settlements with a particular status (SENT or FAILED). | [optional] 
 **batch_token** | **String**| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**Array&lt;V1Settlement&gt;**](V1Settlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_bank_account**
> V1BankAccount retrieve_bank_account(location_id, bank_account_id)

RetrieveBankAccount

Provides non-confidential details for a merchant's associated bank account. This endpoint does not provide full bank account numbers, and there is no way to obtain a full bank account number with the Connect API.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the bank account's associated location.

bank_account_id = "bank_account_id_example" # String | The bank account's Square-issued ID. You obtain this value from Settlement objects returned.


begin
  #RetrieveBankAccount
  result = api_instance.retrieve_bank_account(location_id, bank_account_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->retrieve_bank_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the bank account&#39;s associated location. | 
 **bank_account_id** | **String**| The bank account&#39;s Square-issued ID. You obtain this value from Settlement objects returned. | 

### Return type

[**V1BankAccount**](V1BankAccount.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_order**
> V1Order retrieve_order(location_id, order_id)

RetrieveOrder

Provides comprehensive information for a single online store order, including the order's history.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the order's associated location.

order_id = "order_id_example" # String | The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint


begin
  #RetrieveOrder
  result = api_instance.retrieve_order(location_id, order_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->retrieve_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the order&#39;s associated location. | 
 **order_id** | **String**| The order&#39;s Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint | 

### Return type

[**V1Order**](V1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_payment**
> V1Payment retrieve_payment(location_id, payment_id)

RetrievePayment

Provides comprehensive information for a single payment.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the payment's associated location.

payment_id = "payment_id_example" # String | The Square-issued payment ID. payment_id comes from Payment objects returned by the List Payments endpoint, Settlement objects returned by the List Settlements endpoint, or Refund objects returned by the List Refunds endpoint.


begin
  #RetrievePayment
  result = api_instance.retrieve_payment(location_id, payment_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->retrieve_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the payment&#39;s associated location. | 
 **payment_id** | **String**| The Square-issued payment ID. payment_id comes from Payment objects returned by the List Payments endpoint, Settlement objects returned by the List Settlements endpoint, or Refund objects returned by the List Refunds endpoint. | 

### Return type

[**V1Payment**](V1Payment.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **retrieve_settlement**
> V1Settlement retrieve_settlement(location_id, settlement_id)

RetrieveSettlement

Provides comprehensive information for a single settlement.  The returned `Settlement` objects include an `entries` field that lists the transactions that contribute to the settlement total. Most settlement entries correspond to a payment payout, but settlement entries are also generated for less common events, like refunds, manual adjustments, or chargeback holds.  Square initiates its regular deposits as indicated in the [Deposit Options with Square](https://squareup.com/help/us/en/article/3807) help article. Details for a regular deposit are usually not available from Connect API endpoints before 10 p.m. PST the same day.  Square does not know when an initiated settlement **completes**, only whether it has failed. A completed settlement is typically reflected in a bank account within 3 business days, but in exceptional cases it may take longer.

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the settlements's associated location.

settlement_id = "settlement_id_example" # String | The settlement's Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint.


begin
  #RetrieveSettlement
  result = api_instance.retrieve_settlement(location_id, settlement_id)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->retrieve_settlement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the settlements&#39;s associated location. | 
 **settlement_id** | **String**| The settlement&#39;s Square-issued ID. You obtain this value from Settlement objects returned by the List Settlements endpoint. | 

### Return type

[**V1Settlement**](V1Settlement.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_order**
> V1Order update_order(location_id, order_id, body)

UpdateOrder

Updates the details of an online store order. Every update you perform on an order corresponds to one of three actions:

### Example
```ruby
# load the gem
require 'square_connect'
# setup authorization
SquareConnect.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::V1TransactionsApi.new

location_id = "location_id_example" # String | The ID of the order's associated location.

order_id = "order_id_example" # String | The order's Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint

body = SquareConnect::V1UpdateOrderRequest.new # V1UpdateOrderRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.


begin
  #UpdateOrder
  result = api_instance.update_order(location_id, order_id, body)
  p result
rescue SquareConnect::ApiError => e
  puts "Exception when calling V1TransactionsApi->update_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_id** | **String**| The ID of the order&#39;s associated location. | 
 **order_id** | **String**| The order&#39;s Square-issued ID. You obtain this value from Order objects returned by the List Orders endpoint | 
 **body** | [**V1UpdateOrderRequest**](V1UpdateOrderRequest.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**V1Order**](V1Order.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



