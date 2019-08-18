class AddWarrantyContentToSite < ActiveRecord::Migration
  def change
    add_column :sites, :warrantyContent, :text
  end
end
