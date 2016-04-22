class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find params[:id]
  end

  def edit
    @order = Order.find params[:id]
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to orders_path
  end

  def new
    @order = Order.new
    @customers = Customer.all
    @menu_items = MenuItem.all
  end

  def create
    order = Order.create
    order_params
    redirect_to orders_path
  end

  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:server_id, :menu_item_id, :customer_id)
  end

end
