=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # V1Item
  class V1Item
    # The item's ID. Must be unique among all entity IDs ever provided on behalf of the merchant. You can never reuse an ID. This value can include alphanumeric characters, dashes (-), and underscores (_).
    attr_accessor :id

    # The item's name.
    attr_accessor :name

    # The item's description.
    attr_accessor :description

    # The item's type. This value is NORMAL for almost all items. See [V1ItemType](#type-v1itemtype) for possible values
    attr_accessor :type

    # The color of the discount's display label in Square Register, if not the default color. The default color is 9da2a6. See [V1ItemColor](#type-v1itemcolor) for possible values
    attr_accessor :color

    # The text of the item's display label in Square Register. Only up to the first five characters of the string are used.
    attr_accessor :abbreviation

    # Indicates whether the item is viewable from the merchant's online store (PUBLIC) or PRIVATE. See [V1ItemVisibility](#type-v1itemvisibility) for possible values
    attr_accessor :visibility

    # If true, the item can be added to shipping orders from the merchant's online store.
    attr_accessor :available_online

    # The item's master image, if any.
    attr_accessor :master_image

    # The category the item belongs to, if any.
    attr_accessor :category

    # The item's variations. You must specify at least one variation.
    attr_accessor :variations

    # The modifier lists that apply to the item, if any.
    attr_accessor :modifier_lists

    # The fees that apply to the item, if any.
    attr_accessor :fees

    # Deprecated. This field is not used.
    attr_accessor :taxable

    # The ID of the item's category, if any.
    attr_accessor :category_id

    # If true, the item can be added to pickup orders from the merchant's online store. Default value: false
    attr_accessor :available_for_pickup

    # The ID of the CatalogObject in the Connect v2 API. Objects that are shared across multiple locations share the same v2 ID.
    attr_accessor :v2_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'type' => :'type',
        :'color' => :'color',
        :'abbreviation' => :'abbreviation',
        :'visibility' => :'visibility',
        :'available_online' => :'available_online',
        :'master_image' => :'master_image',
        :'category' => :'category',
        :'variations' => :'variations',
        :'modifier_lists' => :'modifier_lists',
        :'fees' => :'fees',
        :'taxable' => :'taxable',
        :'category_id' => :'category_id',
        :'available_for_pickup' => :'available_for_pickup',
        :'v2_id' => :'v2_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'type' => :'String',
        :'color' => :'String',
        :'abbreviation' => :'String',
        :'visibility' => :'String',
        :'available_online' => :'BOOLEAN',
        :'master_image' => :'V1ItemImage',
        :'category' => :'V1Category',
        :'variations' => :'Array<V1Variation>',
        :'modifier_lists' => :'Array<V1ModifierList>',
        :'fees' => :'Array<V1Fee>',
        :'taxable' => :'BOOLEAN',
        :'category_id' => :'String',
        :'available_for_pickup' => :'BOOLEAN',
        :'v2_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.has_key?(:'abbreviation')
        self.abbreviation = attributes[:'abbreviation']
      end

      if attributes.has_key?(:'visibility')
        self.visibility = attributes[:'visibility']
      end

      if attributes.has_key?(:'available_online')
        self.available_online = attributes[:'available_online']
      end

      if attributes.has_key?(:'master_image')
        self.master_image = attributes[:'master_image']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'variations')
        if (value = attributes[:'variations']).is_a?(Array)
          self.variations = value
        end
      end

      if attributes.has_key?(:'modifier_lists')
        if (value = attributes[:'modifier_lists']).is_a?(Array)
          self.modifier_lists = value
        end
      end

      if attributes.has_key?(:'fees')
        if (value = attributes[:'fees']).is_a?(Array)
          self.fees = value
        end
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.has_key?(:'available_for_pickup')
        self.available_for_pickup = attributes[:'available_for_pickup']
      end

      if attributes.has_key?(:'v2_id')
        self.v2_id = attributes[:'v2_id']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          type == o.type &&
          color == o.color &&
          abbreviation == o.abbreviation &&
          visibility == o.visibility &&
          available_online == o.available_online &&
          master_image == o.master_image &&
          category == o.category &&
          variations == o.variations &&
          modifier_lists == o.modifier_lists &&
          fees == o.fees &&
          taxable == o.taxable &&
          category_id == o.category_id &&
          available_for_pickup == o.available_for_pickup &&
          v2_id == o.v2_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, description, type, color, abbreviation, visibility, available_online, master_image, category, variations, modifier_lists, fees, taxable, category_id, available_for_pickup, v2_id].hash
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
