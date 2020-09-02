# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module Pepipost
  # UpdateSubaccount modal
  class Updatesubaccount < BaseModel
    # The username for the subaccount
    # @return [String]
    attr_accessor :username

    # The new email address to be registered with the subaccount
    # @return [String]
    attr_accessor :new_email

    # The new password of the subaccount
    # @return [String]
    attr_accessor :new_password

    # reconfirm the new password for the subaccount
    # @return [String]
    attr_accessor :confirm_password

    # Allowed values one_time_credit or unlimited by default, all subaccounts
    # are created with credit type as unlimited.
    # @return [String]
    attr_accessor :credit_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['username'] = 'username'
      @_hash['new_email'] = 'new_email'
      @_hash['new_password'] = 'new_password'
      @_hash['confirm_password'] = 'confirm_password'
      @_hash['credit_type'] = 'credit_type'
      @_hash
    end

    def initialize(username = nil,
                   new_email = nil,
                   new_password = nil,
                   confirm_password = nil,
                   credit_type = nil)
      @username = username
      @new_email = new_email
      @new_password = new_password
      @confirm_password = confirm_password
      @credit_type = credit_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      username = hash['username']
      new_email = hash['new_email']
      new_password = hash['new_password']
      confirm_password = hash['confirm_password']
      credit_type = hash['credit_type']

      # Create object from extracted values.
      Updatesubaccount.new(username,
                           new_email,
                           new_password,
                           confirm_password,
                           credit_type)
    end
  end
end
