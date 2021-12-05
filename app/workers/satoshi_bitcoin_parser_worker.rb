# frozen_string_literal: true

# worker for calculation
class SatoshiBitcoinParserWorker
  include Sidekiq::Worker

  def perform
    Parsers::SatoshiBitcoinParser.new.call
  end
end
