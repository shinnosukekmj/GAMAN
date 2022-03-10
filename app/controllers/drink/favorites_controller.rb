class Drink::FavoritesController < ApplicationController
  def create
    voice = Voice.find(params[:voice_id])
    favorite = current_drink.favorites.new(voice_id: voice.id)
    favorite.save
    redirect_to drink_voices_path
  end

  def destroy
    voice = Voice.find(params[:voice_id])
    favorite = current_drink.favorites.find_by(voice_id: voice.id)
    favorite.destroy
    redirect_to drink_voices_path
  end
end
