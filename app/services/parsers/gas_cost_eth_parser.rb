# frozen_string_literal: true

# this module is for parsing
module Parsers
  # this class is for fetching gas cost for etherium
  class GasCostEthParser < Parser
    private

    def update_value
      Resource.gas_eth.first.update(rate: parse)
    end

    def parse
      response.dig('result', 'FastGasPrice').to_i
    end

    def url
      'https://api.etherscan.io/api?module=gastracker&action=gasoracle'
    end
  end
end
