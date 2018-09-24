# pepipost_gem
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PepipostGem
  #  pepipost_gem client class.
  class PepipostGemClient
    # Singleton access to email controller.
    # @return [EmailController] Returns the controller instance.
    def email
      EmailController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end
  end
end