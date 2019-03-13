# SquareConnect::ListAdditionalRecipientReceivableRefundsResponse

### Description

Defines the fields that are included in the response body of a request to the [ListAdditionalRecipientReceivableRefunds](#endpoint-listadditionalrecipientreceivablerefunds) endpoint.  One of `errors` or `additional_recipient_receivable_refunds` is present in a given response (never both).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | Any errors that occurred during the request. | [optional] 
**receivable_refunds** | [**Array&lt;AdditionalRecipientReceivableRefund&gt;**](AdditionalRecipientReceivableRefund.md) | An array of AdditionalRecipientReceivableRefunds that match your query. | [optional] 
**cursor** | **String** | A pagination cursor for retrieving the next set of results, if any remain. Provide this value as the &#x60;cursor&#x60; parameter in a subsequent request to this endpoint.  See [Pagination](/basics/api101/pagination) for more information. | [optional] 


