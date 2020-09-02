# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module Pepipost
  # TemplateController
  class TemplateController < BaseController
    @instance = TemplateController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Let's you fetch template data using template_id for your pepipost account.
    # @param [Integer] template_id Required parameter: Example:
    # @return Object response from the API call
    def get_template_get(template_id)
      # Prepare query url.
      _path_url = '/template'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'template_id' => template_id
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise APIException.new(
          'API Response',
          _context
        )
      elsif _context.response.status_code == 401
        raise APIException.new(
          'API Response',
          _context
        )
      elsif _context.response.status_code == 403
        raise APIException.new(
          'API Response',
          _context
        )
      elsif _context.response.status_code == 405
        raise APIException.new(
          'Invalid input',
          _context
        )
      end
      validate_response(_context)
      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end