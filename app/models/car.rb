class Car < ActiveRecord::Base
  if Rails.env.development? || Rails.env.production?
    has_attached_file :image, :styles => { :large => "400x", :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  else 
    has_attached_file :image, :styles => { :large => "400x", :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg", 
                            :storage => :dropbox,
                            :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                              :path => ":style/:id_:filename"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  end
  
  validates :make_id, :model_id, :year, presence: true
  validates_length_of :vin, :minimum => 17, :maximum => 17
  
  belongs_to :user
  
  belongs_to :make
  
  belongs_to :model
  
  has_many :images, dependent: :destroy
  
  def self.featured #=> Used to randomize the featured cars, mixed with AJAX should do featured rotation
      all.where(:published => true, :featured => true)#=> .sample(1)
  end
end
