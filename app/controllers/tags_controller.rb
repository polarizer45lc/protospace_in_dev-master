class TagsController < ApplicationController

  def index
    @tags = Tag.order('created_at DESC')
  end

  def show
  end

end
