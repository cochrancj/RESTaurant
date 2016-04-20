class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :table_number
      t.references :server
      t.references :order
      t.boolean :has_paid
      t.timestamps null:false
    end
  end
end
