class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]
  def new
    @disable_nav = true
    @user = User.new
  end

  def edit
    @disable_nav = true
  end

  def show
    @disable_nav = true
    if @user == current_user
      redirect_to edit_user_registration_path
    end
    @tools = Tool.where(user_id: params[:id])
  end

  def photo_url
    avatar_url = "http://res.cloudinary.com/wafflewitch/image/upload/c_scale,h_50,r_50,w_50/v1499912601/userpic.jpg"
  end

  def update
    @disable_nav = true
    @user.update(user_params)
    redirect_to user_path
  end

  def create
    @disable_nav = true
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :address, :bio, :photo, :photo_cache)
  end


  def set_user
    @user = User.find(params[:id])
  end
end
