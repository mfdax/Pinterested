class PinturesController < ApplicationController

  before_action do
    @current_user = User.find_by(id: session[:current_user])
    @pintures = Pinture.all.order('created_at desc').page(params[:page])
  end

  def home
    @user = User.new
  end

  def new
    @pinture = Pinture.new
  end

  def create
    @pinture = Pinture.new params.require(:pinture).permit(:photo, :comment, :link, :user_id)
    @pinture.save
  end

  def show
    @pinture = Pinture.find_by(id: params[:id])
  end
end
