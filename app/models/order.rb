class Order < ActiveRecord::Base

  belongs_to :server
  belongs_to :menu_item
  belongs_to :customer

end
