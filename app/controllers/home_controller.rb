class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_2e9b72995cd340f992cf7a0f5cba4b53')

    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter a Symbol!"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @error = "Hey! That stock doesn't exist please try again!"
      end

    end

  end

  def about
  end
end
