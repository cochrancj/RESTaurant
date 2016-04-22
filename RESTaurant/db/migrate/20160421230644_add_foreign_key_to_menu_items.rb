class AddForeignKeyToMenuItems < ActiveRecord::Migration
  def change

    add_foreign_key :orders, :server
    add_foreign_key :orders, :menu_items
    add_foreign_key :orders, :customers
  end
end
