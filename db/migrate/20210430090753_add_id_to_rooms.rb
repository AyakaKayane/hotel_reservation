class AddIdToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :reservation_id, :string
  end
end
