# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServerManagement::Mgmt::V2016_07_01_preview
  module Models
    #
    # A multipart-numeric version number.
    #
    class Version

      include MsRestAzure

      # @return [Integer] The leftmost number of the version.
      attr_accessor :major

      # @return [Integer] The second leftmost number of the version.
      attr_accessor :minor

      # @return [Integer] The third number of the version.
      attr_accessor :build

      # @return [Integer] The fourth number of the version.
      attr_accessor :revision

      # @return [Integer] The MSW of the fourth part.
      attr_accessor :major_revision

      # @return [Integer] The LSW of the fourth part.
      attr_accessor :minor_revision


      #
      # Mapper for Version class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Version',
          type: {
            name: 'Composite',
            class_name: 'Version',
            model_properties: {
              major: {
                client_side_validation: true,
                required: false,
                serialized_name: 'major',
                type: {
                  name: 'Number'
                }
              },
              minor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minor',
                type: {
                  name: 'Number'
                }
              },
              build: {
                client_side_validation: true,
                required: false,
                serialized_name: 'build',
                type: {
                  name: 'Number'
                }
              },
              revision: {
                client_side_validation: true,
                required: false,
                serialized_name: 'revision',
                type: {
                  name: 'Number'
                }
              },
              major_revision: {
                client_side_validation: true,
                required: false,
                serialized_name: 'majorRevision',
                type: {
                  name: 'Number'
                }
              },
              minor_revision: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minorRevision',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
