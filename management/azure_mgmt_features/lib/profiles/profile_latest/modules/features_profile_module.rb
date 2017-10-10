# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'

module Azure::Features::Management::Profile_Latest
    Features = Azure::ARM::Features::Api_2015_12_01::Features

    module Models
      FeatureResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
      FeatureOperationsListResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
      FeatureProperties = Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
    end

    #
    # Features
    #
    class FeaturesClass
      attr_reader :features, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        @features = client.features
        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client
        client = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(@configurable.credentials, @base_url, @options)
        client.subscription_id = configurable.subscription_id
        return client
      end

      class ModelClasses
        def feature_result
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
        end
        def feature_operations_list_result
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
        end
        def feature_properties
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
        end
      end
    end
end