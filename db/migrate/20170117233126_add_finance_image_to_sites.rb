class AddFinanceImageToSites < ActiveRecord::Migration
  def change
    add_column :sites, :financeImage, :string
  end
end
