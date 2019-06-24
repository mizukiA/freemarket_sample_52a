class CardsController < ApplicationController

  def new
    @card = Card.new
    @years = Card.expiration_years
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to success_users_path
    else
      @years = Card.expiration_years
      render :new
    end
  end

  private
  def card_params
    params.require(:card).permit(:card_number, :expiration_month, :expiration_year, :security_code).merge(user_id: current_user.id)
  end
end
