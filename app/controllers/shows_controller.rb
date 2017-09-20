class ShowsController < ApplicationController
  before_action :find_show, except: :create
  before_action :find_band

  def new
    @show = Show.new
  end

  def edit
  end

  def create
    @show = @band.shows.new(show_params)

    respond_to do |format|
      if @show.save
        format.html { redirect_to @band, notice: 'Show was successfully created.' }
        format.json { render :show, status: :created, location: @show }
      else
        format.html { render :new }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @show.update(show_params)
        format.html { redirect_to @band, notice: 'Show was successfully updated.' }
        format.json { render :show, status: :ok, location: @show }
      else
        format.html { render :edit }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @show.destroy
    respond_to do |format|
      format.html { redirect_to @band, notice: 'Show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def show_params
      params.require(:show).permit(:date, :time, :name, :location)
    end

    def find_show
      @show = Show.find_by(id: params[:id])
    end
    def find_band
      @band = Band.find_by(id: params[:band_id])
    end
end
