class AddWarrantyImageToSites < ActiveRecord::Migration
  def change
    add_column :sites, :warrantyImage, :string
  end
end
