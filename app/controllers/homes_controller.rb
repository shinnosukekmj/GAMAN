class HomesController < ApplicationController
  def top
    @voices = Voice.all.order(created_at: :desc)
    @voises = Voise.all.order(created_at: :desc)
  end
end
