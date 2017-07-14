class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_tool, only: [ :show, :edit, :update, :destroy ]
  before_action :set_user, only: [ :new, :create, :index ]

  def new
    @disable_nav = true
    @tool = Tool.new
  end

  def edit
    @disable_nav = true
  end

  def show
    @tool = Tool.find(params[:id])
    @user = User.find(@tool[:user_id])
    @hash = Gmaps4rails.build_markers(@tool) do |tool, marker|
        marker.lat tool.user.latitude if !tool.user.latitude.nil?
        marker.lng tool.user.longitude if !tool.user.longitude.nil?
    end
  end

  def index
    if !params[:title].nil?
      @tools = search_title
    else
      @tools = search_category
    end

    @hash = Gmaps4rails.build_markers(@tools) do |tool, marker|
        marker.lat tool.user.latitude if !tool.user.latitude.nil?
        marker.lng tool.user.longitude if !tool.user.longitude.nil?
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def search_title
     @tools = if params[:title]
      Tool.where('title iLIKE ?', "%#{params[:title]}%")
    else
      Tool.all
    end
  end

  def search_category
    if params[:category]
      filtered = []
      Tool.all.each do |tool|
        filtered << tool if tool.tags.include? params[:category]
      end
      @tools = filtered
    else
      @tools = Tool.all
    end
  end


  def update
    @tool.update(tool_params)
    redirect_to tools_path
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.tags = params[:tool][:tags].reject { |c| c.empty? }
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
    params.require(:tool).permit(:user_id, :tags, :description, :title, :price, :available, :photo, :photo_cache)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def set_user
    @user = User.find(current_user[:id])
  end
end
