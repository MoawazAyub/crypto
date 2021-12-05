# frozen_string_literal: true

# this module is for parsing
module Parsers
  # this class is for fetching satoshi value for bitcoin
  class Parser
    attr_reader :response

    def call
      initiate_parsing
    end

    private

    def initiate_parsing
      @response = parse_response_data
      update_value
    end

    def update_value
      raise 'define update_value'
    end

    def url
      raise 'define url'
    end

    def parse
      raise 'define parse'
    end

    def call_api
      ExternalApi::Get.new(url).call
    end

    def parse_response_data
      JSON.parse(call_api)
    end
  end
end
