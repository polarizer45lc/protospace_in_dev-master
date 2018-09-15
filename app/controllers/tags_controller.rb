class TagsController < ApplicationController

  def index
    @tags = Tag.order('created_at DESC')
  end

  def show
    tag = Tag.find('params[:id]')
    @proto = prototype.tag
  end

end
