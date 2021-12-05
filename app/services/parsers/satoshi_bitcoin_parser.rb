# frozen_string_literal: true

# this module is for parsing
module Parsers
  # this class is for fetching satoshi value for bitcoin
  class SatoshiBitcoinParser < Parser
    private

    def update_value
      Resource.satoshi.first.update(rate: parse)
    end

    def parse
      response['priority']
    end

    def url
      'https://api.blockchain.info/mempool/fees'
    end
  end
end
