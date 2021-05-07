class AddTotalDateToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :total_date, :integer
  end
end
