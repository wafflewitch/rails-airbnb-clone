class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @categories = Tool::CATEGORIES
  end

  def profile
    @tools = Tool.where(user_id: current_user.id)
    @user = current_user
  end

end

