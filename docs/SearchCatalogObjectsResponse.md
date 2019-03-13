# SquareConnect::SearchCatalogObjectsResponse

### Description



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;Error&gt;**](Error.md) | The set of [Error](#type-error)s encountered. | [optional] 
**cursor** | **String** | The pagination cursor to be used in a subsequent request. If unset, this is the final response. See [Pagination](/basics/api101/pagination) for more information. | [optional] 
**objects** | [**Array&lt;CatalogObject&gt;**](CatalogObject.md) | The [CatalogObject](#type-catalogobject)s returned. | [optional] 
**related_objects** | [**Array&lt;CatalogObject&gt;**](CatalogObject.md) | A list of [CatalogObject](#type-catalogobject)s referenced by the objects in the &#x60;objects&#x60; field. | [optional] 


