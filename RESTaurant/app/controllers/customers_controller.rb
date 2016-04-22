class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find params[:id]
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
    if session[:server_id]
      @server = Server.find session[:server_id]
    else
      redirect_to log_in_path
    end
  end

  def create
    customer = Customer.create
    customer_params
    redirect_to new_order_path
  end

  def destroy
    customer = Customer.find params[:id]
    customer.destroy
    redirect_to profile_path
  end

  private

  def customer_params
    params.require(:customer).permit(:server_id, :order_id, :table_number, :has_paid)
  end

end
