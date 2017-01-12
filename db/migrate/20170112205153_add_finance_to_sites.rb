class AddFinanceToSites < ActiveRecord::Migration
  def change
    add_column :sites, :finance, :string
  end
end
