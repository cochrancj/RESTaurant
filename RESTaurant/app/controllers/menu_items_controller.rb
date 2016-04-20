class MenuItemsController < ApplicationController

  def index
    @menu_items = Menu_Item.all
  end

  def show
    @menu_item = Menu_Item.find params[:id]
  end

  def edit
    @menu_item = Menu_Item.find params[:id]
  end

  def update
    menu_item = Menu_Item.find params[:id]
    menu_item.update menu_item_params
    redirect_to menu_items_path
  end

  def new
    @menu_item = Menu_Item.new
  end

  def create
    menu_item = Menu_Item.create menu_item_params.merge({server_id: current_server.id})
    redirect_to profile_path
  end

  def destroy
    menu_item = Menu_Item.find params[:id]
    menu_item.destroy
    redirect_to profile_path
  end

  private

  def menu_item_params
    params.reqire(:menu_item).permit(:name, :description, :price)
  end 

end
