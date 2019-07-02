class UsersController < ApplicationController
  before_action :authenticate_user!, except: :signup
 
  def show
  end

  def edit
  end

  # def create
  #   @user = Users.create(user_params)
  #   redirect_to root_path
  # end

  def update
  end

  def logout
  end

  def signup
  end

  def profile
    @user = User.find(current_user.id)
  end

  def identification
    @user = User.find(current_user.id)
    @address = @user.address
  end

  def card
  end

  def addcard
  end

  def success
  end
  # private
  # def user_params
  #   params.require(:user).permit( :nickname,
  #                                 :email,
  #                                 :family_name,
  #                                 :last_name,
  #                                 :family_name_kana,
  #                                 :last_name_kana,
  #                                 :birth_year,
  #                                 :birth_month,
  #                                 :birth_day
  #                               )
  # end

end
