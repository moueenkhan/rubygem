# thing_space_connectivity_management_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ThingSpaceConnectivityManagementApi
  # Request to add the devices.
  class AddDevicesRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The billing account to which the devices are added.
    # @return [String]
    attr_accessor :account_name

    # The names and values for any custom fields that you want set for the
    # devices as they are added to the account.
    # @return [List of CustomFields]
    attr_accessor :custom_fields

    # The devices that you want to add.
    # @return [List of AccountDeviceList]
    attr_accessor :devices_to_add

    # The name of a device group to add the devices to. They are added to the
    # default device group if you don't include this parameter.
    # @return [String]
    attr_accessor :group_name

    # The Stock Keeping Unit (SKU) number of a 4G device type with an embedded
    # SIM.
    # @return [String]
    attr_accessor :sku_number

    # The initial service state for the devices. The only valid state is
    # “Preactive.”
    # @return [String]
    attr_accessor :state

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['custom_fields'] = 'customFields'
      @_hash['devices_to_add'] = 'devicesToAdd'
      @_hash['group_name'] = 'groupName'
      @_hash['sku_number'] = 'skuNumber'
      @_hash['state'] = 'state'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        custom_fields
        devices_to_add
        group_name
        sku_number
        state
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP,
                   custom_fields = SKIP,
                   devices_to_add = SKIP,
                   group_name = SKIP,
                   sku_number = SKIP,
                   state = SKIP)
      @account_name = account_name unless account_name == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @devices_to_add = devices_to_add unless devices_to_add == SKIP
      @group_name = group_name unless group_name == SKIP
      @sku_number = sku_number unless sku_number == SKIP
      @state = state unless state == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (CustomFields.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')
      # Parameter is an array, so we need to iterate through it
      devices_to_add = nil
      unless hash['devicesToAdd'].nil?
        devices_to_add = []
        hash['devicesToAdd'].each do |structure|
          devices_to_add << (AccountDeviceList.from_hash(structure) if structure)
        end
      end

      devices_to_add = SKIP unless hash.key?('devicesToAdd')
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP
      sku_number = hash.key?('skuNumber') ? hash['skuNumber'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP

      # Create object from extracted values.
      AddDevicesRequest.new(account_name,
                            custom_fields,
                            devices_to_add,
                            group_name,
                            sku_number,
                            state)
    end
  end
end
