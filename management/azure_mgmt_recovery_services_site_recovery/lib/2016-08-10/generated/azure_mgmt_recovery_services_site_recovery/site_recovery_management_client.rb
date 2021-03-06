# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  #
  # A service client - single point of access to the REST API.
  #
  class SiteRecoveryManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription Id.
    attr_accessor :subscription_id

    # @return [String] The name of the resource group where the recovery
    # services vault is present.
    attr_accessor :resource_group_name

    # @return [String] The name of the recovery services vault.
    attr_accessor :resource_name

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [ReplicationVaultHealth] replication_vault_health
    attr_reader :replication_vault_health

    # @return [ReplicationProtectedItems] replication_protected_items
    attr_reader :replication_protected_items

    # @return [ReplicationNetworkMappings] replication_network_mappings
    attr_reader :replication_network_mappings

    # @return [ReplicationFabrics] replication_fabrics
    attr_reader :replication_fabrics

    # @return [ReplicationvCenters] replicationv_centers
    attr_reader :replicationv_centers

    # @return [ReplicationStorageClassificationMappings]
    # replication_storage_classification_mappings
    attr_reader :replication_storage_classification_mappings

    # @return [ReplicationStorageClassifications]
    # replication_storage_classifications
    attr_reader :replication_storage_classifications

    # @return [ReplicationRecoveryServicesProviders]
    # replication_recovery_services_providers
    attr_reader :replication_recovery_services_providers

    # @return [RecoveryPoints] recovery_points
    attr_reader :recovery_points

    # @return [ReplicationRecoveryPlans] replication_recovery_plans
    attr_reader :replication_recovery_plans

    # @return [ReplicationProtectionContainers]
    # replication_protection_containers
    attr_reader :replication_protection_containers

    # @return [ReplicationProtectionContainerMappings]
    # replication_protection_container_mappings
    attr_reader :replication_protection_container_mappings

    # @return [ReplicationProtectableItems] replication_protectable_items
    attr_reader :replication_protectable_items

    # @return [ReplicationPolicies] replication_policies
    attr_reader :replication_policies

    # @return [Operations] operations
    attr_reader :operations

    # @return [ReplicationNetworks] replication_networks
    attr_reader :replication_networks

    # @return [ReplicationLogicalNetworks] replication_logical_networks
    attr_reader :replication_logical_networks

    # @return [ReplicationJobs] replication_jobs
    attr_reader :replication_jobs

    # @return [ReplicationEvents] replication_events
    attr_reader :replication_events

    # @return [ReplicationAlertSettings] replication_alert_settings
    attr_reader :replication_alert_settings

    #
    # Creates initializes a new instance of the SiteRecoveryManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @replication_vault_health = ReplicationVaultHealth.new(self)
      @replication_protected_items = ReplicationProtectedItems.new(self)
      @replication_network_mappings = ReplicationNetworkMappings.new(self)
      @replication_fabrics = ReplicationFabrics.new(self)
      @replicationv_centers = ReplicationvCenters.new(self)
      @replication_storage_classification_mappings = ReplicationStorageClassificationMappings.new(self)
      @replication_storage_classifications = ReplicationStorageClassifications.new(self)
      @replication_recovery_services_providers = ReplicationRecoveryServicesProviders.new(self)
      @recovery_points = RecoveryPoints.new(self)
      @replication_recovery_plans = ReplicationRecoveryPlans.new(self)
      @replication_protection_containers = ReplicationProtectionContainers.new(self)
      @replication_protection_container_mappings = ReplicationProtectionContainerMappings.new(self)
      @replication_protectable_items = ReplicationProtectableItems.new(self)
      @replication_policies = ReplicationPolicies.new(self)
      @operations = Operations.new(self)
      @replication_networks = ReplicationNetworks.new(self)
      @replication_logical_networks = ReplicationLogicalNetworks.new(self)
      @replication_jobs = ReplicationJobs.new(self)
      @replication_events = ReplicationEvents.new(self)
      @replication_alert_settings = ReplicationAlertSettings.new(self)
      @api_version = '2016-08-10'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_recovery_services_site_recovery'
        sdk_information = "#{sdk_information}/0.16.0"
        add_user_agent_information(sdk_information)
    end
  end
end
