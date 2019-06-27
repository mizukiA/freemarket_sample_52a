class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy]
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
    @items = Item.where(@item.saler_id == params[:id]).limit(12)
    @comment = Comment.new
    @comments = @item.comments.includes(:user)

  end

  def destroy
    if @item.destroy
      redirect_to user_path
    else  
      redirect_to action: 'show'
      flash[:notice] = "削除に失敗しました"
    end
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

  def set_item
    @item = Item.find(params[:id])
  end
end

