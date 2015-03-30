class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.decimal :price
      t.string :carType
      t.string :transmission
      t.string :interior
      t.integer :miles
      t.string :drive
      t.string :exterior
      t.string :vin
      t.text :description

      t.timestamps null: false
    end
  end
end
