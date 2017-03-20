class AddWarrantyUrlToSites < ActiveRecord::Migration
  def change
    add_column :sites, :warrantyURL, :string
  end
end
