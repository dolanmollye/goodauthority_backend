class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

def create
  @user = User.find_by(username: user_login_params[:username])
  if @user && @user.authenticate(user_login_params[:password])
    token = encode_token({ user_id: @user.id })
    render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
  else
    render json: { error: "You need to log in first!"}, status: 401
  end
end

private

def user_login_params
  params.require(:user).permit(:username, :email, :password)
end
end
