# frozen_string_literal: true

# this module is for calculation
module Calculation
  # this class is for bitcoin transaction cost
  class BitcoinSvCost < TransactionCost
    private

    def calculate_transaction_cost
      @cost = satoshi_per_byte_value * amount_of_byte * currency_rate * constant
    end

    def satoshi_per_byte_value
      Resource.satoshi_sv.first.rate
    end

    def amount_of_byte
      198
    end

    def currency_rate
      currency.rate
    end

    def currency
      @currency ||= CryptoCurrency.find_by_name('bitcoin-sv')
    end

    def constant
      @constant ||= 1e-8
    end

    def update_transaction
      currency.update(transaction_cost: cost)
    end
  end
end
