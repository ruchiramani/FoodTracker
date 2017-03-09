class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.authenticate!(params[:user_name], [:password])
    if user
      session[:user_id] = user.idea
      redirect_to homepage_path
    else
      redirect_to root_path
    end
  end

  def destroy
  end

end
