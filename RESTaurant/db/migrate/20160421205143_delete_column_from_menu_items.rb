class DeleteColumnFromMenuItems < ActiveRecord::Migration
  def down
    remove_column :menu_items, :username
  end
end
