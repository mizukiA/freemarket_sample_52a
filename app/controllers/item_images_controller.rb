class ItemImagesController < ApplicationController
    def destroy
      @item_image = ItemImage.find(params[:id])
      @item_image.destroy
      redirect_to edit_item_path(@item_image.item_id)
    end
end
