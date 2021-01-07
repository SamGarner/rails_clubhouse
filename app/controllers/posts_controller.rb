class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    # @post = Post.new(body: params[:post][:body])
    @post = current_user.posts.build(whitelisted_post_params)
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
