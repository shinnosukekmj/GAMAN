class PricesController < ApplicationController
  def index
    Price.destroy_all
    @price = Price.new
    @prices = Price.all
  end

  def create
    @price= Price.new(price_params)
    if @price.save
      @prices = Price.all
    else
      @prices = Price.all
    end
  end

  private
  def price_params
    params.require(:price).permit(:money,:count)
  end
end