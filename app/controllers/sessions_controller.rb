class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(name: params[:name])
    if user.save
      session[:name] = user.name
      redirect_to user_path(user)
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end
end
