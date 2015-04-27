class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :people
      t.string :date
      t.string :time
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
