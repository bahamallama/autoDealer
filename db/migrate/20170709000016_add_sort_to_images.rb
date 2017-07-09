class AddSortToImages < ActiveRecord::Migration
  def change
    add_column :images, :sort, :integer, :null => false, :default => 0
  end
end
