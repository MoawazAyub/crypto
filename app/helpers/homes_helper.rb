# frozen_string_literal: true

# home module helper
module HomesHelper
  def multisig_transaction_value(currency)
    currency.multisig ? (currency.transaction_cost * currency.multisig) : 'N/A'
  end
end
