class AddImageRoomToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :image_room, :string
  end
end
