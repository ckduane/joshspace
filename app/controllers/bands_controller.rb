class BandsController < ApplicationController
  before_action :find_band, only: [:edit, :update, :destroy]
  def show
    @band = Band.find(params[:id])
    @songs = get_list("/Test")
  end

  def edit
  end

  def update
    respond_to do |format|
      if @band.update(band_params)
        format.html { redirect_to @band, notice: 'Band name was successfully updated. Hi Josh!'}
      else
        format.html { render :edit }
      end
    end
  end

  private

  def find_band
    @band = Band.find_by(id: params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :photo, :genre, :location, :email, :member_since, :influences, :sounds_like, :record_label, :type_of_label, :profile_views, :last_login, :css)
  end
end
