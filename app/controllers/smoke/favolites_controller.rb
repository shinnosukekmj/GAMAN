class Smoke::FavolitesController < ApplicationController
  def create
    voise = Voise.find(params[:voise_id])
    favolite = current_smoke.favolites.new(voise_id: voise.id)
    favolite.save
    redirect_to smoke_voises_path
  end

  def destroy
    voise = Voise.find(params[:voise_id])
    favolite = current_smoke.favolites.find_by(voise_id: voise.id)
    favolite.destroy
    redirect_to smoke_voises_path
  end
end