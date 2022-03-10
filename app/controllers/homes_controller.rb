class HomesController < ApplicationController
  def top
    @voices = Voice.all
    @voises = Voise.all
  end
end
