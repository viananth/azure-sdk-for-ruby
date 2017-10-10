# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Web::Management::Profile_2015_08_01
    AppServiceCertificateOrders = Azure::ARM::Web::Api_2015_08_01::AppServiceCertificateOrders

    module Models
      AppServiceCertificateOrderCollection = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrderCollection
      Resource = Azure::ARM::Web::Api_2015_08_01::Models::Resource
      AppServiceCertificate = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificate
      SiteSealRequest = Azure::ARM::Web::Api_2015_08_01::Models::SiteSealRequest
      CertificateDetails = Azure::ARM::Web::Api_2015_08_01::Models::CertificateDetails
      AppServiceCertificateCollection = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateCollection
      NameIdentifier = Azure::ARM::Web::Api_2015_08_01::Models::NameIdentifier
      SiteSeal = Azure::ARM::Web::Api_2015_08_01::Models::SiteSeal
      ProxyOnlyResource = Azure::ARM::Web::Api_2015_08_01::Models::ProxyOnlyResource
      AppServiceCertificateResource = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateResource
      AppServiceCertificateOrder = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrder
      CertificateEmail = Azure::ARM::Web::Api_2015_08_01::Models::CertificateEmail
      CertificateOrderAction = Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderAction
      ReissueCertificateOrderRequest = Azure::ARM::Web::Api_2015_08_01::Models::ReissueCertificateOrderRequest
      RenewCertificateOrderRequest = Azure::ARM::Web::Api_2015_08_01::Models::RenewCertificateOrderRequest
      KeyVaultSecretStatus = Azure::ARM::Web::Api_2015_08_01::Models::KeyVaultSecretStatus
      CertificateProductType = Azure::ARM::Web::Api_2015_08_01::Models::CertificateProductType
      ProvisioningState = Azure::ARM::Web::Api_2015_08_01::Models::ProvisioningState
      CertificateOrderStatus = Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderStatus
      CertificateOrderActionType = Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderActionType
    end

    #
    # Web
    #
    class WebClass
      attr_reader :app_service_certificate_orders, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Web::Api_2015_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @app_service_certificate_orders = client.app_service_certificate_orders
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::Web::Api_2015_08_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def app_service_certificate_order_collection
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrderCollection
        end
        def resource
          Azure::ARM::Web::Api_2015_08_01::Models::Resource
        end
        def app_service_certificate
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificate
        end
        def site_seal_request
          Azure::ARM::Web::Api_2015_08_01::Models::SiteSealRequest
        end
        def certificate_details
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateDetails
        end
        def app_service_certificate_collection
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateCollection
        end
        def name_identifier
          Azure::ARM::Web::Api_2015_08_01::Models::NameIdentifier
        end
        def site_seal
          Azure::ARM::Web::Api_2015_08_01::Models::SiteSeal
        end
        def proxy_only_resource
          Azure::ARM::Web::Api_2015_08_01::Models::ProxyOnlyResource
        end
        def app_service_certificate_resource
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateResource
        end
        def app_service_certificate_order
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrder
        end
        def certificate_email
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateEmail
        end
        def certificate_order_action
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderAction
        end
        def reissue_certificate_order_request
          Azure::ARM::Web::Api_2015_08_01::Models::ReissueCertificateOrderRequest
        end
        def renew_certificate_order_request
          Azure::ARM::Web::Api_2015_08_01::Models::RenewCertificateOrderRequest
        end
        def key_vault_secret_status
          Azure::ARM::Web::Api_2015_08_01::Models::KeyVaultSecretStatus
        end
        def certificate_product_type
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateProductType
        end
        def provisioning_state
          Azure::ARM::Web::Api_2015_08_01::Models::ProvisioningState
        end
        def certificate_order_status
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderStatus
        end
        def certificate_order_action_type
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderActionType
        end
      end
    end
end