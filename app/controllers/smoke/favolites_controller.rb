class Smoke::FavolitesController < ApplicationController
  def create
    voise = Voise.find(params[:voise_id])
    favolite = current_smoke.favolites.new(voise_id: voise.id)
    favolite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    voise = Voise.find(params[:voise_id])
    favolite = current_smoke.favolites.find_by(voise_id: voise.id)
    favolite.destroy
    redirect_back(fallback_location: root_path)
  end
end