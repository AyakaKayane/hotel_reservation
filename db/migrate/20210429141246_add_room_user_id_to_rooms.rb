class AddRoomUserIdToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :room_user_id, :string
  end
end
