# SquareConnect::ListEmployeeWagesResponse

### Description

The response to a request for a set of `EmployeeWage` objects. Contains  a set of `EmployeeWage`.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_wages** | [**Array&lt;EmployeeWage&gt;**](EmployeeWage.md) | A page of Employee Wage results. | [optional] 
**cursor** | **String** | Value supplied in the subsequent request to fetch the next next page of Employee Wage results. | [optional] 
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 


