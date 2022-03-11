class Smoke::SmokesController < ApplicationController
  def show
    @smoke = Smoke.find(params[:id])
    @voises = @smoke.voises
  end

  def update
    @smoke = Smoke.find(params[:id])
    @smoke.update(smoke_params)
    redirect_to smoke_smoke_path(current_smoke)
  end


  private
  def smoke_params
    params.require(:smoke).permit(:name)
  end
end
