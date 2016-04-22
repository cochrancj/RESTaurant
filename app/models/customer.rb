class Customer <ActiveRecord::Base

  belongs_to :server
  has_many :orders
  has_many :items, :through => :orders

end
