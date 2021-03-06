# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_06_15
  module Models
    #
    # Response for CheckConnectionSharedKey Api servive call
    #
    class ConnectionSharedKeyResult

      include MsRestAzure

      # @return [String] The virtual network connection shared key value
      attr_accessor :value


      #
      # Mapper for ConnectionSharedKeyResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionSharedKeyResult',
          type: {
            name: 'Composite',
            class_name: 'ConnectionSharedKeyResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
