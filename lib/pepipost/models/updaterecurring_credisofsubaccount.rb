# pepipost
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module Pepipost
  # Setrecurringcreditddetails modal
  class UpdaterecurringCredisofsubaccount < BaseModel
    # The username of the subaccount
    # @return [String]
    attr_accessor :username

    # The amount to be added periodically
    # @return [Integer]
    attr_accessor :recurring_credit

    # The periodic \n\nAllowed values  \"daily\", \"weekly\", \"monhtly\"
    # @return [TimeperiodEnum]
    attr_accessor :timeperiod

    # The date from which the credit allocation will commence
    # @return [String]
    attr_accessor :start_date

    # The last date of credit allocation
    # @return [String]
    attr_accessor :end_date

    # Flag to enable or disable the recurring credit allocation
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['username'] = 'username'
      @_hash['recurring_credit'] = 'recurring_credit'
      @_hash['timeperiod'] = 'timeperiod'
      @_hash['start_date'] = 'start_date'
      @_hash['end_date'] = 'end_date'
      @_hash['status'] = 'status'
      @_hash
    end

    def initialize(username = nil,
                   recurring_credit = nil,
                   timeperiod = nil,
                   start_date = nil,
                   end_date = nil,
                   status = nil)
      @username = username
      @recurring_credit = recurring_credit
      @timeperiod = timeperiod
      @start_date = start_date
      @end_date = end_date
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      username = hash['username']
      recurring_credit = hash['recurring_credit']
      timeperiod = hash['timeperiod']
      start_date = hash['start_date']
      end_date = hash['end_date']
      status = hash['status']

      # Create object from extracted values.
      UpdaterecurringCredisofsubaccount.new(username,
                                            recurring_credit,
                                            timeperiod,
                                            start_date,
                                            end_date,
                                            status)
    end
  end
end
