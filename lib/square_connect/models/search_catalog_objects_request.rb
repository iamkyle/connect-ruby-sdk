=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  #
  class SearchCatalogObjectsRequest
    # The pagination cursor returned in the previous response. Leave unset for an initial request. See [Pagination](/basics/api101/pagination) for more information.
    attr_accessor :cursor

    # The desired set of object types to appear in the search results. The legal values are taken from the [CatalogObjectType](#type-catalogobjecttype) enumeration, namely `\"ITEM\"`, `\"ITEM_VARIATION\"`, `\"CATEGORY\"`, `\"DISCOUNT\"`, `\"TAX\"`, `\"MODIFIER\"`, or `\"MODIFIER_LIST\"`. See [CatalogObjectType](#type-catalogobjecttype) for possible values
    attr_accessor :object_types

    # If `true`, deleted objects will be included in the results. Deleted objects will have their `is_deleted` field set to `true`.
    attr_accessor :include_deleted_objects

    # If `true`, the response will include additional objects that are related to the requested object, as follows:  If a [CatalogItem](#type-catalogitem) is returned in the object field of the response, its associated [CatalogCategory](#type-catalogcategory), [CatalogTax](#type-catalogtax)es, [CatalogImage](#type-catalogimage)s and [CatalogModifierList](#type-catalogmodifierlist)s will be included in the `related_objects` field of the response.  If a [CatalogItemVariation](#type-catalogitemvariation) is returned in the object field of the response, its parent [CatalogItem](#type-catalogitem) will be included in the `related_objects` field of the response.
    attr_accessor :include_related_objects

    # Return objects modified after this [timestamp](#workingwithdates), in RFC 3339 format, e.g., \"2016-09-04T23:59:33.123Z\". The timestamp is exclusive - objects with a timestamp equal to `begin_time` will not be included in the response.
    attr_accessor :begin_time

    # A query to be used to filter or sort the results. If no query is specified, the entire catalog will be returned.
    attr_accessor :query

    # A limit on the number of results to be returned in a single page. The limit is advisory - the implementation may return more or fewer results. If the supplied limit is negative, zero, or is higher than the maximum limit of 1,000, it will be ignored.
    attr_accessor :limit


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cursor' => :'cursor',
        :'object_types' => :'object_types',
        :'include_deleted_objects' => :'include_deleted_objects',
        :'include_related_objects' => :'include_related_objects',
        :'begin_time' => :'begin_time',
        :'query' => :'query',
        :'limit' => :'limit'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cursor' => :'String',
        :'object_types' => :'Array<String>',
        :'include_deleted_objects' => :'BOOLEAN',
        :'include_related_objects' => :'BOOLEAN',
        :'begin_time' => :'String',
        :'query' => :'CatalogQuery',
        :'limit' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'cursor')
        self.cursor = attributes[:'cursor']
      end

      if attributes.has_key?(:'object_types')
        if (value = attributes[:'object_types']).is_a?(Array)
          self.object_types = value
        end
      end

      if attributes.has_key?(:'include_deleted_objects')
        self.include_deleted_objects = attributes[:'include_deleted_objects']
      end

      if attributes.has_key?(:'include_related_objects')
        self.include_related_objects = attributes[:'include_related_objects']
      end

      if attributes.has_key?(:'begin_time')
        self.begin_time = attributes[:'begin_time']
      end

      if attributes.has_key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.has_key?(:'limit')
        self.limit = attributes[:'limit']
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
          cursor == o.cursor &&
          object_types == o.object_types &&
          include_deleted_objects == o.include_deleted_objects &&
          include_related_objects == o.include_related_objects &&
          begin_time == o.begin_time &&
          query == o.query &&
          limit == o.limit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cursor, object_types, include_deleted_objects, include_related_objects, begin_time, query, limit].hash
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
