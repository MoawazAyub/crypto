# frozen_string_literal: true

# this module is for external api
module ExternalApi
  require 'uri'
  require 'net/http'
  # make a get request to an API
  class Get
    attr_reader :url

    def initialize(url)
      @url = URI(url)
    end

    def call
      @call ||= fetch_data
    end

    private

    def fetch_data
      @fetch_data ||= request
    end

    def https
      @https ||= Net::HTTP.new(url.host, url.port)
    end

    def request
      @request ||= Net::HTTP.get(url)
    end
  end
end
