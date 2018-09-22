class LikesController < ApplicationController

  def create
    @prototype = Prototype.find(params[:prototype_id])
    unless @mprototype.like?(current_user)
      @prototype.like(current_user)
      @prototype.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        # format.html { redirect_to prototypes_path(@prototype) }
        format.json
      end
    end
  end

  def destroy
    @prototype = Like.find(params[:id]).prototype
    if @prototype.like?(current_user)
      @prototype.unlike(current_user)
      # @prototype.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        # format.html { redirect_to prototypes_path(@prototype) }
        # prototype_path
        format.json
      end
    end
  end
end


