class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  def followings
    @user = User.find(params[:id])
  end

  def followers
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction, :instagram)
  end
end
