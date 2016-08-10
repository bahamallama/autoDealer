class RemoveJumbotronFromSite < ActiveRecord::Migration
  def change
    remove_column :sites, :jumbotron, :string
  end
end
