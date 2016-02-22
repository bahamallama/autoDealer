class Carmessage

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :special
  
  validates :special, absence: true

  validates :name, presence: true

  validates :email, presence: true, :format => /.+@.+\..+/i

  validates :content, presence: true

end