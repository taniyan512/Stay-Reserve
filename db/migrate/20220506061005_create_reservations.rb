class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :startDay
      t.date :endDay
      t.integer :numberOfPeople
      t.integer :totalPrice
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
