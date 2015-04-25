class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :neighbourhood
      t.integer :phone_number
      t.string :description
      t.string :category
      t.string :timeslots
      t.string :pricerange
      t.string :imgurl

      t.timestamps null: false
    end
  end
end
