class AddSoldToCars < ActiveRecord::Migration
  def change
    add_column :cars, :sold, :boolean
  end
end
