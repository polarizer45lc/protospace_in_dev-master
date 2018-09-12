class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment: comment_params[:comment], prototype_id: comment_params[:prototype_id], user_id: current_user.id)
    redirect_to "/prototypes/#{@comment.prototype_id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(prototype_id: params[:prototype_id], user_id: params[:user_id])
  end

end
