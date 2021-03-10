class PostsController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end

  def create
    post = Post.create(post_params)
    if post.valid?
      render json: post, status: 201
    else
      render json: { error: 'try again!' }, status: :not_acceptable
    end
  end

  def show
    post = Post.find_by(id: params[:id])
    render json: post
  end


  private
  def post_params
    params.require(:post).permit(:user_id, :image, :restaurant, :caption, :description)
  end
end
