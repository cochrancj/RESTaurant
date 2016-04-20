class Order < ActiveRecord::Base

  has_one :server
  has_many :items
  has_many :customers

end
