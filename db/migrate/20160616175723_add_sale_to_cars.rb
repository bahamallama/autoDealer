class AddSaleToCars < ActiveRecord::Migration
  def change
    add_column :cars, :sale, :boolean
  end
end
