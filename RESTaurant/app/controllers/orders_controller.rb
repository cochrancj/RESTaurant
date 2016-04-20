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
  end

  def create
    order = Order.create order_params.merge({server_id: current_server.id})
    redirect_to profile_path
  end

  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to profile_path
  end

  private

  def order_params
    params.reqire(:order).permit(:server_id, :menu_item_id, :customer_id)
  end

end
