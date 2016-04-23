class OrdersController < ApplicationController

  before_action :get_server_or_redirect_to_log_in

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
    order = Order.create!(order_params)

    redirect_to customers_path

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

  def get_server_or_redirect_to_log_in

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

end
