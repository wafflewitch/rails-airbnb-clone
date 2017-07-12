class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @tools = Tool.where(user_id: current_user.id)
  end

end
