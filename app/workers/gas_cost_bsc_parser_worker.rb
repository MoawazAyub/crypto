# frozen_string_literal: true

# worker for calculation
class GasCostBscParserWorker
  include Sidekiq::Worker

  def perform
    Parsers::GasCostBscParser.new.call
  end
end
