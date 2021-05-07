class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start
      t.date :finish
      t.string :cost
      t.integer :count
      t.string :user_id
      t.string :room_id

      t.timestamps
    end
  end
end
