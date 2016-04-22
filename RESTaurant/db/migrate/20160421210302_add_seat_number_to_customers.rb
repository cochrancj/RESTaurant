class AddSeatNumberToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :seat_number, :integer
  end
end
