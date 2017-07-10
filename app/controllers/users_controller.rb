class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]
  def new
    @user = User.new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
    redirect_to users_path
  end

  def create
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

# @user = User.new(first_name: "Jessica", last_name: "Waffles", address: "30 Cat bouevard", email: "waffles@cat.com")
