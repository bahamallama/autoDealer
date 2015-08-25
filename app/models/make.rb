class Make < ActiveRecord::Base
  has_many :cars
  has_many :models
  
  default_scope {order("Lower(name)")}
end
