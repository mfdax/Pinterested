class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    email = params[:session][:email]
    password = params[:session][:password]

    user = User.find_by(email: email)

      if (user) && (user.authenticate password)
        session[:current_user] = user.id
        @current_user = user
      end
  end

  def delete
    session.delete :current_user
    redirect_to root_path, notice: 'Successfully logged out'
  end

end
