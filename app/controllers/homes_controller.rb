# frozen_string_literal: true

# home controller
class HomesController < ApplicationController
  def index
    @currencies = CryptoCurrency.all
  end
end
