# frozen_string_literal: true

class CryptoCurrency < ApplicationRecord
  validates :name, presence: true
  validates :abbreviation, presence: true
  validates :transaction_cost, presence: true
  validates :rate, presence: true
end
