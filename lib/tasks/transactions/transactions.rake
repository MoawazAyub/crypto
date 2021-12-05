# frozen_string_literal: true

namespace :transactions do
  task calculate_transactions: :environment do
    CalculateTransactionsWorker.perform_async
  end

  task get_resources: :environment do
    CryptoCurrencyParserWorker.perform_async
    GasCostBscParserWorker.perform_async
    GasCostEthParserWorker.perform_async
    SatoshiBitcoinParserWorker.perform_async
    SatoshiBitcoinSvParserWorker.perform_async
  end
end
