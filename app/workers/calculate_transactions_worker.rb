# frozen_string_literal: true

# worker for calculation
class CalculateTransactionsWorker
  include Sidekiq::Worker

  def perform
    ::Calculation::CalculateTransactionCost.new.call
  end
end
