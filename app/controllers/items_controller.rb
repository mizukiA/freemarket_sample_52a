class ItemsController < ApplicationController


  before_action :set_item, only: [:show, :destroy, :edit, :update, :buy, :pay, :success]

  before_action :authenticate_user!, except: [:index, :show]
  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item =Item.new
    10.times { @item.item_images.build }
  end

  def create
    @item = Item.new(item_params)
      
      @item.save!
      redirect_to root_path
    
  end

  def show
    @items = Item.where(saler_id: @item.saler_id).where.not(id: @item.id).limit(12)
    @comment = Comment.new
    @comments = @item.comments.includes(:user)

  end

  def destroy
    if @item.destroy
      redirect_to user_path(@item.saler_id)
    elsif @item.saler_id != current_user.id
      redirect_to item_path(@item.id)
    else  
      redirect_to action: 'show'
      flash[:notice] = "削除に失敗しました"
    end
  end

  def edit
    if @item.saler_id != current_user.id
      redirect_to item_path(@item.id)
    end
  end

  def update
    # image_urls = params[:item_image][:image_url].select { |url| url != '' }
    # image_urls.each do |url|
    #   item_image = @item.item_images.new(image_url: url)
    #   item_image.save!
    # end

    # params[:item][:item_images_attributes].each do |image|
    #   image.delete(:image_url) if image[:image_url] == ''
    # end

    # binding.pry
    # # @item_images = ItemImage.new(image_params)
    # @item.attributes = item_params
    # binding.pry
    if @item.saler_id == current_user.id
      # binding.pry
      @item.update!(item_params)
    #   # @item_images.save!()
      redirect_to item_path(@item.id)
    end
  end

  def buy
    @address = current_user.address
    @card = current_user.card
  end

  def pay
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      card: params['payjp-token'],
      currency: 'jpy'
    )
    if @item.update(buyer_id: current_user.id)
      redirect_to success_item_path
    else
      redirect_to action: 'buy'
      flash[:notice] = "削除に失敗しました"
    end
    
  end

  def success
    @user = User.find(current_user.id)
    @address = current_user.address
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
                                 item_images_attributes: [:image_url, :id, :_destroy]
                                 ).merge(saler_id: current_user.id)
  end
  def image_params
    params.require(:item_image).permit(image_url: []).merge(item_id: params[:id])
  end
  def set_item
    @item = Item.find(params[:id])
  end
end

