# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # The list of ProtectionPolicy resources.
    #
    class ProtectionPolicyResourceList < ResourceList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ProtectionPolicyResource>] The list of resources.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<ProtectionPolicyResource>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.null != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [ProtectionPolicyResourceList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@null).value! unless @next_method.nil?
        unless response.nil?
          @null = response.body.null
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for ProtectionPolicyResourceList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionPolicyResourceList',
          type: {
            name: 'Composite',
            class_name: 'ProtectionPolicyResourceList',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ProtectionPolicyResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProtectionPolicyResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
