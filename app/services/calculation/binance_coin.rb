# frozen_string_literal: true

# this module is for calculation
module Calculation
  # this class is for bitcoin transaction cost
  class BinanceCoin < TransactionCost
    private

    def calculate_transaction_cost
      @cost = gas_cost * gas_amount * currency_rate * constant
    end

    def gas_cost
      Resource.gas_bsc.first.rate
    end

    def gas_amount
      21_000
    end

    def currency_type
      'binance-coin'
    end

    def constant
      @constant ||= 1e-9
    end
  end
end
