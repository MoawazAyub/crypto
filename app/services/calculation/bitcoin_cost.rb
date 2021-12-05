# frozen_string_literal: true

# this module is for calculation
module Calculation
  # this class is for bitcoin transaction cost
  class BitcoinCost < TransactionCost
    private

    def calculate_transaction_cost
      @cost = satoshi_per_byte_value * amount_of_byte * currency_rate * constant
    end

    def satoshi_per_byte_value
      Resource.satoshi.first.rate
    end

    def amount_of_byte
      198
    end

    def currency_type
      'bitcoin'
    end

    def constant
      @constant ||= 1e-8
    end
  end
end
