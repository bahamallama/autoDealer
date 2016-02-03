class AddEpaToCars < ActiveRecord::Migration
  def change
    add_column :cars, :epa, :string
  end
end
