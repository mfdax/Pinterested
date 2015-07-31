class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end

  def show
  end

end
