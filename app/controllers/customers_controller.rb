class CustomersController < ApplicationController

  before_action :get_server_or_redirect_to_log_in


  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find params[:id]
    @order = Order.new
  end

  def edit
    @customer = Customer.find params[:id]
  end

  def update
    customer = Customer.find params[:id]
    customer.update customer_params
    redirect_to customers_path
  end

  def new
    @customer = Customer.new
  end

  def create
    customer = Customer.create customer_params
    redirect_to customers_path
  end

  def destroy
    customer = Customer.find params[:id]
    customer.destroy
    # customer.destroy[:customer.id]
    # customer.destroy(customer_params)
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:server_id, :order_id, :table_number, :seat_number, :has_paid)
  end

  def get_server_or_redirect_to_log_in

    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end

  end

end
