=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # An item (i.e., product family) in the Catalog object model.
  class CatalogItem
    # The item's name. Searchable. This field must not be empty. This field has max length of 512 Unicode code points.
    attr_accessor :name

    # The item's description. Searchable. This field has max length of 4096 Unicode code points.
    attr_accessor :description

    # The text of the item's display label in the Square Point of Sale app. Only up to the first five characters of the string are used. Searchable. This field has max length of 24 Unicode code points.
    attr_accessor :abbreviation

    # The color of the item's display label in the Square Point of Sale app. This must be a valid hex color code.
    attr_accessor :label_color

    # If `true`, the item can be added to shipping orders from the merchant's online store.
    attr_accessor :available_online

    # If `true`, the item can be added to pickup orders from the merchant's online store.
    attr_accessor :available_for_pickup

    # If `true`, the item can be added to electronically fulfilled orders from the merchant's online store.
    attr_accessor :available_electronically

    # The ID of the item's category, if any.
    attr_accessor :category_id

    # A set of IDs indicating the [CatalogTax](#type-catalogtax)es that are enabled for this item. When updating an item, any taxes listed here will be added to the item. [CatalogTax](#type-catalogtax)es may also be added to or deleted from an item using `UpdateItemTaxes`.
    attr_accessor :tax_ids

    # A set of [CatalogItemModifierListInfo](#type-catalogitemmodifierlistinfo) objects representing the modifier lists that apply to this item, along with the overrides and min and max limits that are specific to this item. [CatalogModifierList](#type-catalogmodifierlist)s may also be added to or deleted from an item using `UpdateItemModifierLists`.
    attr_accessor :modifier_list_info

    # __Deprecated__. The URL of an image representing this item. Deprecated in favor of `image_id` in [`CatalogObject`](#type-catalogobject).
    attr_accessor :image_url

    # A list of [CatalogObject](#type-catalogobject)s containing the [CatalogItemVariation](#type-catalogitemvariation)s for this item.
    attr_accessor :variations

    # The product type of the item. May not be changed once an item has been created.  Only items of product type `REGULAR` may be created by this API; items with other product types are read-only. See [CatalogItemProductType](#type-catalogitemproducttype) for possible values
    attr_accessor :product_type

    # If `false`, the Square Point of Sale app will present the [CatalogItem](#type-catalogitem)'s details screen immediately, allowing the merchant to choose [CatalogModifier](#type-catalogmodifier)s before adding the item to the cart.  This is the default behavior.  If `true`, the Square Point of Sale app will immediately add the item to the cart with the pre-selected modifiers, and merchants can edit modifiers by drilling down onto the item's details.  Third-party clients are encouraged to implement similar behaviors.
    attr_accessor :skip_modifier_screen

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'abbreviation' => :'abbreviation',
        :'label_color' => :'label_color',
        :'available_online' => :'available_online',
        :'available_for_pickup' => :'available_for_pickup',
        :'available_electronically' => :'available_electronically',
        :'category_id' => :'category_id',
        :'tax_ids' => :'tax_ids',
        :'modifier_list_info' => :'modifier_list_info',
        :'image_url' => :'image_url',
        :'variations' => :'variations',
        :'product_type' => :'product_type',
        :'skip_modifier_screen' => :'skip_modifier_screen'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'description' => :'String',
        :'abbreviation' => :'String',
        :'label_color' => :'String',
        :'available_online' => :'BOOLEAN',
        :'available_for_pickup' => :'BOOLEAN',
        :'available_electronically' => :'BOOLEAN',
        :'category_id' => :'String',
        :'tax_ids' => :'Array<String>',
        :'modifier_list_info' => :'Array<CatalogItemModifierListInfo>',
        :'image_url' => :'String',
        :'variations' => :'Array<CatalogObject>',
        :'product_type' => :'String',
        :'skip_modifier_screen' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'abbreviation')
        self.abbreviation = attributes[:'abbreviation']
      end

      if attributes.has_key?(:'label_color')
        self.label_color = attributes[:'label_color']
      end

      if attributes.has_key?(:'available_online')
        self.available_online = attributes[:'available_online']
      end

      if attributes.has_key?(:'available_for_pickup')
        self.available_for_pickup = attributes[:'available_for_pickup']
      end

      if attributes.has_key?(:'available_electronically')
        self.available_electronically = attributes[:'available_electronically']
      end

      if attributes.has_key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.has_key?(:'tax_ids')
        if (value = attributes[:'tax_ids']).is_a?(Array)
          self.tax_ids = value
        end
      end

      if attributes.has_key?(:'modifier_list_info')
        if (value = attributes[:'modifier_list_info']).is_a?(Array)
          self.modifier_list_info = value
        end
      end

      if attributes.has_key?(:'image_url')
        self.image_url = attributes[:'image_url']
      end

      if attributes.has_key?(:'variations')
        if (value = attributes[:'variations']).is_a?(Array)
          self.variations = value
        end
      end

      if attributes.has_key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.has_key?(:'skip_modifier_screen')
        self.skip_modifier_screen = attributes[:'skip_modifier_screen']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      product_type_validator = EnumAttributeValidator.new('String', ["REGULAR", "GIFT_CARD", "APPOINTMENTS_SERVICE", "RETAIL_ITEM", "RESTAURANT_ITEM"])
      return false unless product_type_validator.valid?(@product_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_type Object to be assigned
    def product_type=(product_type)
      validator = EnumAttributeValidator.new('String', ["REGULAR", "GIFT_CARD", "APPOINTMENTS_SERVICE", "RETAIL_ITEM", "RESTAURANT_ITEM"])
      unless validator.valid?(product_type)
        fail ArgumentError, "invalid value for 'product_type', must be one of #{validator.allowable_values}."
      end
      @product_type = product_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          abbreviation == o.abbreviation &&
          label_color == o.label_color &&
          available_online == o.available_online &&
          available_for_pickup == o.available_for_pickup &&
          available_electronically == o.available_electronically &&
          category_id == o.category_id &&
          tax_ids == o.tax_ids &&
          modifier_list_info == o.modifier_list_info &&
          image_url == o.image_url &&
          variations == o.variations &&
          product_type == o.product_type &&
          skip_modifier_screen == o.skip_modifier_screen
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, description, abbreviation, label_color, available_online, available_for_pickup, available_electronically, category_id, tax_ids, modifier_list_info, image_url, variations, product_type, skip_modifier_screen].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SquareConnect.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
