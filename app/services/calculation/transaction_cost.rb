# frozen_string_literal: true

# this module is for calculation
module Calculation
  # this class is for transaction cost
  class TransactionCost
    attr_reader :cost

    def call
      calculate_transaction_cost
      update_transaction
    end

    private

    def calculate_transaction_cost
      raise 'define calculate_transaction_cost'
    end

    def currency_rate
      currency.rate
    end

    def currency
      @currency ||= CryptoCurrency.find_by_name(currency_type)
    end

    def constant
      @constant ||= 1e-9
    end

    def update_transaction
      currency.update(transaction_cost: cost)
    end
  end
end
