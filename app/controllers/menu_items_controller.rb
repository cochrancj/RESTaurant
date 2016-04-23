class MenuItemsController < ApplicationController

  def index
    @menu_items = MenuItem.all

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def create
    menu_item = MenuItem.create menu_item_params
    redirect_to menu_items_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def new
    @menu_item = MenuItem.new

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def edit
    @menu_item = MenuItem.find params[:id]

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def show
    @menu_item = MenuItem.find params[:id]

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def update
    menu_item = MenuItem.find params[:id]
    menu_item.update menu_item_params
    redirect_to menu_items_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def destroy
    MenuItem.destroy params[:id]
    redirect_to menu_items_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end
    
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price)
  end

end
