class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :sqft, default: 0, null: false
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode, null: false
      t.float :bathroom
      t.integer :bedrooms
      t.integer :price, default: 0
      t.text :description
      t.integer :location_id
      t.timestamps null: false
    end
  end
end
