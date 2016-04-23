class Customer <ActiveRecord::Base

  belongs_to :server
  has_many :orders
  has_many :menu_items, :through => :orders

end
