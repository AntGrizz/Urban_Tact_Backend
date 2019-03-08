class LikesController < ApplicationController

  def index
      @likes = Like.all
      render json: @likes
  end

  def create
      @like = Like.create!(like_params)
      render json: @like
  end

  def update
      @like.update(like_params)
    if @like.save
        render json: @like, status: :accepted
    else
        render json: { errors: @like.errors.full_messages }, status: :unprocessible_entity
    end
  end

private

    def like_params
       params.permit(:user_id, :post_id)
  end


  def find_note
      @note = Note.find(params[:id])
    end
  end
