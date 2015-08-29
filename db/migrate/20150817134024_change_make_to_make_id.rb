class ChangeMakeToMakeId < ActiveRecord::Migration
  def change
        rename_column :cars, :make, :make_id
        change_column :cars, :make_id, 'integer USING CAST(make_id AS integer)' # Used on heroku for postgresql
        #change_column :cars, :make_id, :integer
  end
end
