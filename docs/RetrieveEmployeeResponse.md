# SquareConnect::RetrieveEmployeeResponse

### Description

Defines the fields that are included in the response body of a request to the [RetrieveEmployee](#endpoint-retrieveemployee) endpoint.  One of `errors` or `employee` is present in a given response (never both).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee** | [**Employee**](Employee.md) | The response object. | [optional] 
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 


