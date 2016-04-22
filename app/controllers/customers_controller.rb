class CustomersController < ApplicationController

  def index
    @customers = Customer.all

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

    # redirect_to customer_orders_path

  end

  def show
    @customer = Customer.find params[:id]
    @order = Order.new

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def edit
    @customer = Customer.find params[:id]

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def update
    customer = Customer.find params[:id]
    customer.update customer_params
    redirect_to customers_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def new
    @customer = Customer.new
    # @server = current_server

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end
  end

  def create
    customer = Customer.create customer_params
    redirect_to customers_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  def destroy
    customer = Customer.find params[:id]
    customer.destroy
    redirect_to customers_path

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

  private

  def customer_params
    params.require(:customer).permit(:server_id, :order_id, :table_number, :seat_number, :has_paid)
  end

end
