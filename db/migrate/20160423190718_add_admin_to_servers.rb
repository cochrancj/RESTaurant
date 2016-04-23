class AddAdminToServers < ActiveRecord::Migration
  def change
    add_column :servers, :admin, :boolean, default: false
  end
end
