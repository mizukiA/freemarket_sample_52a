class AddressesController < ApplicationController

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to new_card_path
    else
      render :new
    end
  end

  private
  def address_params
    params.require(:address).permit(:postal_code, :prefecture, :city, :address, :building, :tel).merge(user_id: current_user.id)
  end
end
