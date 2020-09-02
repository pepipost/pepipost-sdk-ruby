# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module Pepipost
  # SubaccountsController
  class SubaccountsController < BaseController
    @instance = SubaccountsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Lets you enable or disable a subaccount
    # @param [Enableordisablesubacoount] body Required parameter: enable or
    # disable subaccount
    # @return Object response from the API call
    def update_subaccounts_patch(body)
      # Prepare query url.
      _path_url = '/subaccounts'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: body.to_json
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
