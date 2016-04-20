class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :server
      t.references :menu_item
      t.references :customer
      t.timestamps null:false
    end
  end
end
