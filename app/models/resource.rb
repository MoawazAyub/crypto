class Resource < ApplicationRecord
  validates :resource_type, presence: true, uniqueness: true
  validates :rate, presence: true

  enum resource_type: { satoshi: 0, satoshi_sv: 1, gas_eth: 2, gas_bsc: 3 }
end
