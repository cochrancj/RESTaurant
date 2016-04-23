class AddBooleanDefaultToCustomers < ActiveRecord::Migration
  def change
    change_column :customers, :has_paid, :boolean, default: false
  end
end
