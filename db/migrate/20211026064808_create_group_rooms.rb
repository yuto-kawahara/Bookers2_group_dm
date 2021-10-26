class CreateGroupRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :group_rooms do |t|
      t.integer :group_id
      t.integer :room_id
      
      t.timestamps
    end
  end
end
