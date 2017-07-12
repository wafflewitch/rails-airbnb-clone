class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @categories = []
    Tool::CATEGORIES.each do |category|
      new_category = {
        name: category,
        tools: Tool.where(category: category),
        photo: ''
      }
    if new_category[:tools].length > 0
      if !new_category[:tools].first.photo.nil?
        new_category[:photo] = new_category[:tools].first.photo
      end
      @categories << new_category
      end
    end
  end

  def profile
    @tools = Tool.where(user_id: current_user.id)
    @user = current_user
  end
end

