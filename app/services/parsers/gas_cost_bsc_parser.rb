# frozen_string_literal: true

# this module is for parsing
module Parsers
  # this class is for fetching gas cost for etherium
  class GasCostBscParser < Parser
    private

    def update_value
      Resource.gas_bsc.first.update(rate: parse)
    end

    def parse
      response.dig('result', 'FastGasPrice').to_i
    end

    def url
      'https://api.bscscan.com/api?module=gastracker&action=gasoracle'
    end
  end
end

