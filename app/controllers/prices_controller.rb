class PricesController < ApplicationController
  def index
    Price.destroy_all
    @new_price = Price.new
    @prices = Price.all
  end

  def create
    @price= Price.new(price_params)
    @price.save
    @prices = Price.all
  end

  private
  def price_params
    params.require(:price).permit(:money,:count)
  end
end