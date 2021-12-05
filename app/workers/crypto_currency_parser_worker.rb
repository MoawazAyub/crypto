# frozen_string_literal: true

# worker for calculation
class CryptoCurrencyParserWorker
  include Sidekiq::Worker

  def perform
    Parsers::CryptoCurrencyParser.new.call
  end
end
