class ItemsController < ApplicationController
  
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

