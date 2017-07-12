class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @categories = []
    Tool::CATEGORIES.each do |category|
      new_category = {
        name: category,
        tools: Tool.where(category: category),
        image: ""
      }
    if new_category[:tools].length > 0
      if !new_category[:tools].first.photo.nil?
        new_category[:image] = new_category[:tools].first.photo
      end
      @categories << new_category
    end
  end
end
end
