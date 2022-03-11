class Drink::DrinksController < ApplicationController
  def show
    @drink = Drink.find(params[:id])
    @voices = @drink.voices.page(params[:page]).per(5).order(created_at: :desc)
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.update(drink_params)
    redirect_to drink_drink_path(current_drink)
  end


  private
  def drink_params
    params.require(:drink).permit(:name)
  end
end
