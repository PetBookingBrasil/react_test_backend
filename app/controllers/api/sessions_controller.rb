class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:session][:email])
    if @user&.valid_password?(params[:session][:password])
      @user.password = params[:session][:password]
      @user.regenerate_authentication_token
      render json: @user.as_json(only: [:name, :email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    @user = User.find_by(authentication_token: params[:id])
    @user.update_columns(authentication_token: nil)
  end
end
