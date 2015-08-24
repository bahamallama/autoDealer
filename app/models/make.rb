class Make < ActiveRecord::Base
  has_many :cars
  
  default_scope {order("Lower(name)")}
end
