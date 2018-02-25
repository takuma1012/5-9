class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
    @user = current_user
    @blog = Blog.new
  end

  def show
  	@user = User.find(params[:id])
    @blog = Blog.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user.id), notice: 'Edited profile!!'
  end


  private

  def user_params
  	params.require(:user).permit(:name, :profile_image, :body, :title, :introduction,)
  end

end
