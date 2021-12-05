# frozen_string_literal: true

# worker for calculation
class GasCostEthParserWorker
  include Sidekiq::Worker

  def perform
    Parsers::GasCostEthParser.new.call
  end
end
