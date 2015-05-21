class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.attachment :extrapic
      t.integer :car_id

      t.timestamps null: false
    end
  end
end
