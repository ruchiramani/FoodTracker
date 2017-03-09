class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authenticate!
    redirect_to signin_path, notice: "You're not logged in" unless logged_in?
  end

  def root_page?
    !!(request.path == '/')
  end

end
