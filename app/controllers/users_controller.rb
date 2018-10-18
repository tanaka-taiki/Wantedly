class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update,:destroy]

  def show
    user = User.find(params[:id])
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
  end

  def destroy
    @setting = Setting.find(user_params[:id])
    @setting.destroy if user_id == current_user.id
    @project = Project.find(user_params[:id])
    @project.destroy if user_id == current_user.id
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :image,
      :cover_image,
    )
  end
end
