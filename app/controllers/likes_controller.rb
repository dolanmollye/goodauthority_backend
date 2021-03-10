# class LikesController < ApplicationController
#   before_action :set_like, only: [:show, :update, :destroy]
#   # skip_before_action :authorized, only: [:index, :show, :update, :destroy]

#   # GET /Likes
#   def index
#     @likes = Like.all

#     render json: @likes
#   end

#   # GET /likes/1
#   def show
#     render json: @favorite
#   end

#   # POST /likes
#   def create
#     @like = Like.new(like_params)
#     @like.user_id = logged_in_user.id
#     if @like.save
      
#       render json: @like, status: :created
#     else
#       render json: @like.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /likes/1
#   def update
#     if @likes.update(likes_params)
#       render json: @like
#     else
#       render json: @like.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /like/1
#   def destroy
#     @like.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_like
#       @like = Like.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     def like_params
#       params.require(:like).permit(:user_id, :post_id)
#     end
# end