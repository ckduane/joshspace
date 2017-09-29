class FriendsController < ApplicationController
  before_action :find_friend, except: :create
  before_action :find_band

  def new
    @friend = Friend.new
  end

  def edit
  end

  def create
    @friend = @band.friends.new(friend_params)

    respond_to do |format|
      if @friend.save
        format.html { redirect_to @band, notice: 'Friend was successfully created.' }
        format.json { render :friend, status: :created, location: @friend }
      else
        format.html { render :new }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @friend.update(friend_params)
        format.html { redirect_to @band, notice: 'Friend was successfully updated.' }
        format.json { render :friend, status: :ok, location: @friend }
      else
        format.html { render :edit }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @friend.destroy
    respond_to do |format|
      format.html { redirect_to @band, notice: 'Friend was successfully destroyed. :(' }
      format.json { head :no_content }
    end
  end

  private
    def friend_params
      params.require(:friend).permit(:name, :image, :order)
    end

    def find_friend
      @friend = Friend.find_by(id: params[:id])
    end
    def find_band
      @band = Band.find_by(id: params[:band_id])
    end

end
