class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path
    else
      flash.now[:error] = 'Could not save client'
      puts post_params
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.expect(post: [:comment])
  end
end
