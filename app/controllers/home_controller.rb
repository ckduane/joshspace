class HomeController < ApplicationController
  def index
    @band = Band.first
    redirect_to band_path(@band)
  end
end
