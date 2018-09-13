class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :destroy]

  def index
    @prototypes = Prototype.order('created_at DESC').includes(:user).page(params[:page]).per(9)
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
    #@prototype.tags.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to :root, notice: 'New prototype was successfully created'
    else
      redirect_to action: :new, alert: 'New prototype was unsuccessfully created'
    end
  end

  def destroy
    @prototype.destroy if @prototype.user_id == current_user.id
    redirect_to :root, notice: "削除完了しました"
  end

  def show
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:content, :status],
      tags_attributes: [:name]
    )
  end
end
