class RemoveGroupIdFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :group_id, :integer
    add_column :chats, :user_id, :integer
  end
end
