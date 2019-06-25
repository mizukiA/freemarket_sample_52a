class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @items = Item.order("created_at DESC")
  end

  def new
  end

  def show
  end

  def buy
  end
end

