class Site < ActiveRecord::Base
  validates :name, :tag, :about, :contact, :location, :address, :city, :state, :zip, :theme, :jumbotron, presence: true
end
