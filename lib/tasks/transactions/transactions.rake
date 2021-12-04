namespace :transactions do
  task reCalculateTransactions: :environment do |t|
    ReCalculateTransactionsWorker.perform_async
  end
end
