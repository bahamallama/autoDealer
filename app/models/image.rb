class Image < ActiveRecord::Base
  if Rails.env.development?
    has_attached_file :extrapic, :styles => { :large => "400x", :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
    validates_attachment_content_type :extrapic, :content_type => /\Aimage\/.*\Z/
  else
    has_attached_file :extrapic, :styles => { :large => "400x", :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg", 
                              :storage => :dropbox,
                              :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                              :path => ":style/:id_:filename"
    validates_attachment_content_type :extrapic, :content_type => /\Aimage\/.*\Z/
  end
  validates :extrapic, presence: true
  belongs_to :car
end
