class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @disable_nav = true
    @categories = Tool::CATEGORIES
  end

  def profile
    @disable_nav = true
    @tools = Tool.where(user_id: current_user.id)
    @user = current_user
  end

end

