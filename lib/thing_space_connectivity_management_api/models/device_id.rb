# thing_space_connectivity_management_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ThingSpaceConnectivityManagementApi
  # An identifier for a single device.
  class DeviceId < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The value of the device identifier.
    # @return [String]
    attr_accessor :id

    # The type of the device identifier. Valid types of identifiers are:ESN
    # (decimal),EID,ICCID (up to 20 digits),IMEI (up to 16 digits),MDN,MEID
    # (hexadecimal),MSISDN.
    # @return [String]
    attr_accessor :kind

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['kind'] = 'kind'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        kind
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   kind = SKIP)
      @id = id unless id == SKIP
      @kind = kind unless kind == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP

      # Create object from extracted values.
      DeviceId.new(id,
                   kind)
    end
  end
end
