class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user.as_json(only: [:name, :email, :authentication_token])
    else
      render json: { errors: @user.errors.as_json }
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
