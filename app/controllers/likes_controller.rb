# frozen_string_literal: true

class LikesController < OpenReadController
  before_action :set_like, only: %i[show update destroy]

  # GET /likes
  def index
    @likes = Like.all

    render json: @likes, include: '**'
  end

  # GET /likes/1
  def show
    render json: @like, include: '**'
  end

  # POST /likes
  def create
    return if already_liked?

    @like = current_user.likes.new(like_params)

    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /likes/1
  def update
    if @like.update(like_params)
      render json: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  def destroy
    # return unless already_liked?

    @like.destroy
  end

  private

  def already_liked?
    Like.exists?(user_id: current_user.id, question_id: like_params[:question_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_like
    @like = current_user.likes.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def like_params
    params.require(:like).permit(:question_id, :references)
  end
end
