class Carmessage

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :special, :make, :model, :year, :carID
  
  validates :special, absence: true

  validates :name, presence: true

  validates :email, presence: true, :format => /.+@.+\..+/i

  validates :content, presence: true
  
  validates :make, presence: true
  
  validates :model, presence: true
  
  validates :year, presence: true
  
  validates :carID, presence: true

end