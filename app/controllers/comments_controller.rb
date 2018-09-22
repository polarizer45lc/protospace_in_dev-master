class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment: comment_params[:comment], prototype_id: comment_params[:prototype_id], user_id: current_user.id)
    # redirect_to "/prototypes/#{@comment.prototype_id}"
    respond_to do |format|
      format.html {redirect_to prototype_path(params[:prototype_id])}
      format.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(prototype_id: params[:prototype_id], user_id: params[:user_id])
  end

end
