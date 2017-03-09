class UsersController < ApplicationController

  def new
    @user = User.new
  end
  def create
    user = User.create(user_params)
    if user.save
       redirect_to user_path(user)
     else
       redirect_to '/'
     end
  end

  def homepage

  end

  def show
  end
  
  def edit
  end
  def update
  end
  def delete
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
