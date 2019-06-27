class CommentsController < ApplicationController
    def create
        comment = Comment.new(comment_params)
        comment.save   
        redirect_to "/items/#{comment.item.id}"   
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      redirect_to "/items/#{comment.item.id}"
    end

    private
    def comment_params
      params.require(:comment).permit(:comment).merge(item_id: params[:item_id], user_id: current_user.id)
    end
    
      
end
