class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    # @post.update(post_params)
    set_post!
    @post.title = params[:title]
    @post.category = params[:category]
    @post.content = params[:content]
    # binding.pry
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end
    # redirect_to post_path(@post)
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
