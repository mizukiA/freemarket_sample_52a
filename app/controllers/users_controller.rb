class UsersController < ApplicationController
 
  def show
  end

  def edit
  end

  def create
    Users.create(user_params)
    redirect_to root_path
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email)
  end
  
end
