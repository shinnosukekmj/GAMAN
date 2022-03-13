class Smoke::VoisesController < ApplicationController
  before_action :authenticate_smoke!
  def index
    @voise = Voise.new
    @voises = Voise.page(params[:page]).per(10).order(created_at: :desc)
  end

  def create
    @voise = Voise.new(voise_params)
    @voise.smoke_id = current_smoke.id
    if @voise.save
      redirect_to smoke_voises_path
    else
      @voises = Voise.page(params[:page]).per(10).order(created_at: :desc)
      render :index
    end
  end

  def destroy
    @voise = Voise.find(params[:id])
    @voise.destroy
    redirect_to  smoke_voises_path
  end

  private
  def voise_params
    params.require(:voise).permit(:story)
  end
end
