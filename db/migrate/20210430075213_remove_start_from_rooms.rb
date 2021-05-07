class RemoveStartFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :start, :date
    remove_column :rooms, :finish, :date
    remove_column :rooms, :count, :integer
    remove_column :rooms, :room_id, :string
  end
end
