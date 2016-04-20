class Customer <ActiveRecord::Base

  has_one :server
  has_many :items, :through => :orders

end
