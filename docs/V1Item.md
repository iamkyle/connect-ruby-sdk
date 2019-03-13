# SquareConnect::V1Item

### Description

V1Item

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The item&#39;s ID. Must be unique among all entity IDs ever provided on behalf of the merchant. You can never reuse an ID. This value can include alphanumeric characters, dashes (-), and underscores (_). | [optional] 
**name** | **String** | The item&#39;s name. | [optional] 
**description** | **String** | The item&#39;s description. | [optional] 
**type** | **String** | The item&#39;s type. This value is NORMAL for almost all items. See [V1ItemType](#type-v1itemtype) for possible values | [optional] 
**color** | **String** | The color of the discount&#39;s display label in Square Register, if not the default color. The default color is 9da2a6. See [V1ItemColor](#type-v1itemcolor) for possible values | [optional] 
**abbreviation** | **String** | The text of the item&#39;s display label in Square Register. Only up to the first five characters of the string are used. | [optional] 
**visibility** | **String** | Indicates whether the item is viewable from the merchant&#39;s online store (PUBLIC) or PRIVATE. See [V1ItemVisibility](#type-v1itemvisibility) for possible values | [optional] 
**available_online** | **BOOLEAN** | If true, the item can be added to shipping orders from the merchant&#39;s online store. | [optional] 
**master_image** | [**V1ItemImage**](V1ItemImage.md) | The item&#39;s master image, if any. | [optional] 
**category** | [**V1Category**](V1Category.md) | The category the item belongs to, if any. | [optional] 
**variations** | [**Array&lt;V1Variation&gt;**](V1Variation.md) | The item&#39;s variations. You must specify at least one variation. | [optional] 
**modifier_lists** | [**Array&lt;V1Variation&gt;**](V1Variation.md) | The modifier lists that apply to the item, if any. | [optional] 
**fees** | [**Array&lt;V1Fee&gt;**](V1Fee.md) | The fees that apply to the item, if any. | [optional] 
**taxable** | **BOOLEAN** | Deprecated. This field is not used. | [optional] 
**category_id** | **String** | The ID of the item&#39;s category, if any. | [optional] 
**available_for_pickup** | **BOOLEAN** | If true, the item can be added to pickup orders from the merchant&#39;s online store. Default value: false | [optional] 


