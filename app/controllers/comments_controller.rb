class CommentsController < ApplicationController
    def create
        comment = Comment.new(comment_params)
        if comment.save   
          redirect_to item_path(comment.item.id)
        else  
          redirect_to controller: 'items', action: 'new'
          flash[:notice] = "出品に失敗しました"
        end
    end

    def destroy
      comment = Comment.find(params[:id])
      if comment.destroy
        redirect_to item_path(comment.item.id)
      else   
        redirect_to controller: 'items', action: 'show'
        flash[:notice] = "出品に失敗しました"
      end
    end

    private
    def comment_params
      params.require(:comment).permit(:comment).merge(item_id: params[:item_id], user_id: current_user.id)
    end
    
      
end
