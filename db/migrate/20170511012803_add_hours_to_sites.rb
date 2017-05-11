class AddHoursToSites < ActiveRecord::Migration
  def change
    add_column :sites, :hours, :text
  end
end
