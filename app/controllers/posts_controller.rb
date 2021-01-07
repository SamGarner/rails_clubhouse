class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # @post = Post.new(body: params[:post][:body])
    @post = Post.new(whitelisted_post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    #
  end

  def edit
    #
  end

  def update
    #
  end

  def destroy
    #
  end

  private

  def whitelisted_post_params
    params.require(:post).permit(:user_id, :body)
  end
end
