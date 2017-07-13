class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_tool, only: [ :show, :edit, :update, :destroy ]
  before_action :set_user, only: [ :new, :create, :index ]

  def new
    @tool = Tool.new
  end

  def edit
  end

  def show
    @tool = Tool.find(params[:id])
    @user = User.find(@tool[:user_id])
  end

  def index
    if !params[:title].nil?
      search_title
    else
      search_category
    end
  end

  def search_title
     @tools = if params[:title]
      Tool.where('title LIKE ?', "%#{params[:title]}%")
    else
      Tool.all
    end
  end

  def search_category
    @tools = if params[:category]
    Tool.where(category: params[:category])
  else
    Tool.all
  end
  end


  def update
    @tool.update(tool_params)
    redirect_to tools_path
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = @user
    @tool.available = true
    if @tool.save!
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def destroy
    @tool.destroy
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:user_id, :category, :description, :title, :price, :available, :photo, :photo_cache)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def set_user
    @user = User.find(current_user[:id])
  end
end
