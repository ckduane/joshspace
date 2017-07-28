class HomeController < ApplicationController
  def index
    @band = Band.first
  end
end
