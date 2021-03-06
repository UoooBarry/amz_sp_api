=begin
#Selling Partner API for Uploads

#The Selling Partner API for Uploads provides operations that support uploading files.

OpenAPI spec version: 2020-11-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

module AmzSpApi::UploadsApiModel
  class UploadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates an upload destination for a resource that you specify and returns the information required to upload to that destination.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | .1 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param marketplace_ids A list of marketplace identifiers. This specifies the marketplaces where the upload will be available. Only one marketplace can be specified.
    # @param content_md5 An MD5 hash of the content to be submitted to the upload destination. This value is used to determine if the data has been corrupted or tampered with during transit.
    # @param resource The URL of the resource for the upload destination that you are creating. For example, to create an upload destination for a Buyer-Seller Messaging message, the {resource} would be /messaging and the path would be  /uploads/v1/uploadDestinations/messaging
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type The content type of the file to be uploaded.
    # @return [CreateUploadDestinationResponse]
    def create_upload_destination_for_resource(marketplace_ids, content_md5, resource, opts = {})
      data, _status_code, _headers = create_upload_destination_for_resource_with_http_info(marketplace_ids, content_md5, resource, opts)
      data
    end

    # Creates an upload destination for a resource that you specify and returns the information required to upload to that destination.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | .1 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param marketplace_ids A list of marketplace identifiers. This specifies the marketplaces where the upload will be available. Only one marketplace can be specified.
    # @param content_md5 An MD5 hash of the content to be submitted to the upload destination. This value is used to determine if the data has been corrupted or tampered with during transit.
    # @param resource The URL of the resource for the upload destination that you are creating. For example, to create an upload destination for a Buyer-Seller Messaging message, the {resource} would be /messaging and the path would be  /uploads/v1/uploadDestinations/messaging
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type The content type of the file to be uploaded.
    # @return [Array<(CreateUploadDestinationResponse, Integer, Hash)>] CreateUploadDestinationResponse data, response status code and response headers
    def create_upload_destination_for_resource_with_http_info(marketplace_ids, content_md5, resource, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UploadsApi.create_upload_destination_for_resource ...'
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling UploadsApi.create_upload_destination_for_resource"
      end
      # verify the required parameter 'content_md5' is set
      if @api_client.config.client_side_validation && content_md5.nil?
        fail ArgumentError, "Missing the required parameter 'content_md5' when calling UploadsApi.create_upload_destination_for_resource"
      end
      # verify the required parameter 'resource' is set
      if @api_client.config.client_side_validation && resource.nil?
        fail ArgumentError, "Missing the required parameter 'resource' when calling UploadsApi.create_upload_destination_for_resource"
      end
      # resource path
      local_var_path = '/uploads/2020-11-01/uploadDestinations/{resource}'.sub('{' + 'resource' + '}', resource.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)
      query_params[:'contentMD5'] = content_md5
      query_params[:'contentType'] = opts[:'content_type'] if !opts[:'content_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CreateUploadDestinationResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UploadsApi#create_upload_destination_for_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
