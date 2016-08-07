class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name, :default => "site name"
      t.string :tag, :default => "tagline on homepage"
      t.string :contact, :default => "contact information"
      t.text :about, :default => "about us page information"
      t.string :location, :default => "location name"
      t.string :address, :default => "street address"
      t.string :city, :default => "city"
      t.string :state, :default => "state"
      t.string :zip, :default => "zip code"

      t.timestamps null: false
    end
  end
end
