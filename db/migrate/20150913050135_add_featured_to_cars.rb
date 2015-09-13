class AddFeaturedToCars < ActiveRecord::Migration
  def change
    add_column :cars, :featured, :boolean
  end
end
