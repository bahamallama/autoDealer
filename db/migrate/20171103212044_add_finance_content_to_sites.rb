class AddFinanceContentToSites < ActiveRecord::Migration
  def change
    add_column :sites, :financeContent, :string
  end
end
