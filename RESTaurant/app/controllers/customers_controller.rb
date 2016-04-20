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
  end

  def create
    customer = Customer.create customer_params.merge({server_id: current_server.id})
    redirect_to profile_path
  end

  def destroy
    customer = Customer.find params[:id]
    customer.destroy
    redirect_to profile_path
  end

  private

  def customer_params
    params.reqire(:customer).permit(:server_id, :order_id, :table_number, :has_paid)
  end

end
