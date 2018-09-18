class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :destroy]

  def index
    @prototypes = Prototype.order('created_at DESC').includes(:user).page(params[:page]).per(9)
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    tag_list = params[:prototype][:tag_list].reject{|tag| tag == ""}
    if @prototype.save
      @prototype.save_tags(tag_list)
      redirect_to :root, notice: '投稿成功'
    else
      redirect_to action: :new, alert: '投稿失敗'
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
    )
  end
end
