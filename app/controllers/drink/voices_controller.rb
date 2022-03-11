class Drink::VoicesController < ApplicationController
  def index
    @new_voice = Voice.new
    @voices = Voice.page(params[:page]).per(10).order(created_at: :desc)
  end

  def create
    @voice = Voice.new(voice_params)
    @voice.drink_id = current_drink.id
    if @voice.save
      redirect_to drink_voices_path
    else
      render 'index'
    end
  end

  def destroy
    @voice = Voice.find(params[:id])
    @voice.destroy
    redirect_to  drink_voices_path
  end

  private
  def voice_params
    params.require(:voice).permit(:story)
  end
end
