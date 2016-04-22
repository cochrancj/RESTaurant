class OrdersController < ApplicationController

  def index
    @orders = Order.all

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def show
    @order = Order.find params[:id]

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def edit
    @order = Order.find params[:id]

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to orders_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def new
    @order = Order.new
    @customers = Customer.all
    @menu_items = MenuItem.all

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def create
    order = Order.create
    order.create
    # THIS NEEDS TO BE FIXED AFTER MY FORM IS CORRECT
    # (params )
    # user = User.create(name: "David", occupation: "Code Artist")
    redirect_to customer_path
    # (add param shit)

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to orders_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  private

  def order_params
    params.require(:order).permit(:server_id, :menu_item_id, :customer_id)
  end

end
