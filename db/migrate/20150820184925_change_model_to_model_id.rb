class ChangeModelToModelId < ActiveRecord::Migration
  def change
        rename_column :cars, :model, :model_id
        change_column :cars, :model_id, 'integer USING CAST(make_id AS integer)' # Used on heroku for postgresql
        #change_column :cars, :model_id, :integer # Used for SQLite
  end
end
