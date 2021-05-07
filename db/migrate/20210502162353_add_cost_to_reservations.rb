class AddCostToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :cost, :integer
  end
end
