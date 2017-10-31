class ChangeSaleColumnToPending < ActiveRecord::Migration
  def change
    rename_column :cars, :sale, :pending
  end
end
