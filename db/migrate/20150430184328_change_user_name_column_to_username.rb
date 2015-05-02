class ChangeUserNameColumnToUsername < ActiveRecord::Migration
  def change
    rename_column :users, :name, :realname
  end
end
