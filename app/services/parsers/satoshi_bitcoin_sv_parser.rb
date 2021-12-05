# frozen_string_literal: true

# this module is for parsing
module Parsers
  # this class is for fetching satoshi sv value for bitcoin
  class SatoshiBitcoinSvParser < Parser
    private

    def update_value
      Resource.satoshi_sv.first.update(rate: parse)
    end

    def parse
      payload = JSON.parse(response['payload'])
      payload['fees'].each do |fee|
        if fee['feeType'] == 'standard'
          relay_fee = fee['relayFee']
          return (relay_fee['bytes'] / relay_fee['satoshis'])
        end
      end
    end

    def url
      'https://mapi.taal.com/mapi/feeQuote'
    end
  end
end
