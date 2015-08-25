class Model < ActiveRecord::Base
  has_many :cars
  belongs_to :make
  
  default_scope {order("Lower(name)")}
end
