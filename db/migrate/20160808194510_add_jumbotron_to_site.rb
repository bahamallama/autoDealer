class AddJumbotronToSite < ActiveRecord::Migration
  def change
    add_column :sites, :jumbotron, :string
  end
end
