class Smoke::SmokesController < ApplicationController
  before_action :authenticate_smoke!
  def show
    @smoke = Smoke.find(params[:id])
    @voises = @smoke.voises.all.order(created_at: :desc)
  end

  def update
    @smoke = Smoke.find(params[:id])
    if @smoke.update(smoke_params)
      redirect_to smoke_smoke_path(current_smoke)
    else
      @voises = @smoke.voises.all.order(created_at: :desc)
      render :show
    end
  end


  private
  def smoke_params
    params.require(:smoke).permit(:name)
  end
end
