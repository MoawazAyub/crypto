# frozen_string_literal: true

# worker for calculation
class SatoshiBitcoinSvParserWorker
  include Sidekiq::Worker

  def perform
    Parsers::SatoshiBitcoinSvParser.new.call
  end
end
