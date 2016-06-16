class AddReducedToCars < ActiveRecord::Migration
  def change
    add_column :cars, :reduced, :boolean
  end
end
