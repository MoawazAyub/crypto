# frozen_string_literal: true

# this module is for parsing
module Parsers
  # this class is for fetching gas cost for etherium
  class CryptoCurrencyParser < Parser
    private

    def update_value
      parse&.each do |currency, rate|
        CryptoCurrency.find_by_name(currency)&.update(rate: rate)
      end
    end

    def parse
      {}.tap do |data|
        response_data = response['data']
        response_data.each do |currency|
          data[currency['id']] = currency['priceUsd'] if currecy_list.include?(currency['id'])
        end
      end
    end

    def currecy_list
      %w[bitcoin ethereum binance-coin bitcoin-sv]
    end

    def url
      'https://api.coincap.io/v2/assets'
    end
  end
end

