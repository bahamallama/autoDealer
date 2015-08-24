class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.integer :make_id
      t.timestamps null: false
    end
  end
end
