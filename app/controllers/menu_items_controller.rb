class MenuItemsController < ApplicationController

  before_action :admin_or_redirect_to_log_in


  def index
    @menu_items = MenuItem.all
  end

  def create
    menu_item = MenuItem.create menu_item_params
    redirect_to menu_items_path
  end

  def new
    @menu_item = MenuItem.new
  end

  def edit
    @menu_item = MenuItem.find params[:id]
  end

  def show
    @menu_item = MenuItem.find params[:id]
  end

  def update
    menu_item = MenuItem.find params[:id]
    menu_item.update menu_item_params
    redirect_to menu_items_path
  end

  def destroy
    MenuItem.destroy params[:id]
    redirect_to menu_items_path
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price)
  end

  def admin_or_redirect_to_log_in
    unless current_server.admin?
      redirect_to log_in_path
    end
  end

end
