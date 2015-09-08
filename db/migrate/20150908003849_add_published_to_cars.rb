class AddPublishedToCars < ActiveRecord::Migration
  def change
    add_column :cars, :published, :boolean
  end
end
