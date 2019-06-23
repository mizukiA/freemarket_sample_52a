class ItemsController < ApplicationController
  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item =Item.new
    10.times { @item.item_images.build }
  end

  def create
    item = Item.new(item_params)
    if item.save
      redirect_to root_path
    else 
      redirect_to action: 'new'
      flash[:notice] = "出品に失敗しました"
    end
  end

  def show
  end

  def buy
  end

  private
  def item_params
    params.require(:item).permit(:name,
                                 :description,
                                 :condition,
                                 :delivery_fee,
                                 :area,
                                 :delivery_date,
                                 :price,
                                 :buyer_id,
                                 :size,
                                 :category_id,
                                 :brand_id,
                                 item_images_attributes: [:image_url]
                                 ).merge(saler_id: current_user.id)
  end
end

