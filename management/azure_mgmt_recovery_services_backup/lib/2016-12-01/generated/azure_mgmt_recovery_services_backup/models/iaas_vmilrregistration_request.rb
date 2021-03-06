# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Restore files/folders from a backup copy of IaaS VM.
    #
    class IaasVMILRRegistrationRequest < ILRRequest

      include MsRestAzure


      def initialize
        @objectType = "IaasVMILRRegistrationRequest"
      end

      attr_accessor :objectType

      # @return [String] ID of the IaaS VM backup copy from where the
      # files/folders have to be restored.
      attr_accessor :recovery_point_id

      # @return [String] Fully qualified ARM ID of the virtual machine whose
      # the files / folders have to be restored.
      attr_accessor :virtual_machine_id

      # @return [String] iSCSI initiator name.
      attr_accessor :initiator_name

      # @return [Boolean] Whether to renew existing registration with the iSCSI
      # server.
      attr_accessor :renew_existing_registration


      #
      # Mapper for IaasVMILRRegistrationRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IaasVMILRRegistrationRequest',
          type: {
            name: 'Composite',
            class_name: 'IaasVMILRRegistrationRequest',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointId',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineId',
                type: {
                  name: 'String'
                }
              },
              initiator_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initiatorName',
                type: {
                  name: 'String'
                }
              },
              renew_existing_registration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'renewExistingRegistration',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
