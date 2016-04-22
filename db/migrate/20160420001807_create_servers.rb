class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.timestamps null:false 
    end
  end
end
