class Api::V1::PostsController < ApplicationController
  before_action :find_post

 def index
    @posts = Post.all
    render json: @posts
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
    params.permit(:title, :content, :description, :image, :video, :link, :tags)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end