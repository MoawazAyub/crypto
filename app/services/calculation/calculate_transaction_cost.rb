# frozen_string_literal: true

# this module is for calculation
module Calculation
  # this class is for bitcoin transaction cost
  class CalculateTransactionCost
    def call
      calculate
    end

    private

    def calculate
      BinanceCoin.new.call
      BitcoinCost.new.call
      BitcoinSvCost.new.call
      EtheriumCost.new.call
    end
  end
end
