class ReCalculateTransactionsWorker
  include Sidekiq::Worker

  def perform
    p '2222'*100
  end
end
