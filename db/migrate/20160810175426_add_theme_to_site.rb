class AddThemeToSite < ActiveRecord::Migration
  def change
    add_column :sites, :theme, :string, :default => "Theme1"
  end
end
