class AddMenuItemToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :menu_item, :string
  end
end
