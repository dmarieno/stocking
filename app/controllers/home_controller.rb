class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_2e9b72995cd340f992cf7a0f5cba4b53')
  end

  def about
  end
end
