class PostsController < ApplicationController

 def index
    @posts = Post.all
    render json: @posts
  end



  def create
      @post = Post.create!(post_params)
      render json: @post
  end

  def update
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :description, :image, :video, :link, :tags, :likes, :user_id)
  end


end