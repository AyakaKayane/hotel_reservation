class AddStartToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :start, :date
    add_column :rooms, :finish, :date
    add_column :rooms, :count, :integer
    add_column :rooms, :room_id, :string
  end
end
