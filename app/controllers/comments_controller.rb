class CommentsController < ApplicationController
  # before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :load_commentable
  before_action :find_comment, only: [:edit, :update, :destroy ]
  before_action :find_band, except: :create
  def index
    @comments = @commentable.comments
  end

  def show
  end

  def new
    @comment = @commentable.comments.new
  end

  def edit
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to @commentable, notice: 'Comment Created'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @band, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @band, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_commentable
      resource, id = request.path.split('/')[1,2]
      @commentable = resource.singularize.classify.constantize.find(id)
    end

    def comment_params
      params.require(:comment).permit(:body, :username, :image, :commentable_type, :commentable_id)
    end

    def find_band
      @band = Band.find_by(id: params[:band_id])
    end

    def find_comment
      @comment = Comment.find_by(id: params[:id])
    end
end
