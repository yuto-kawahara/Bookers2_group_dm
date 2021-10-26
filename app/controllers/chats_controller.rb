class ChatsController < ApplicationController
  # def show
  #   @group = Group.find(params[:id])
  #   rooms = @group.group_rooms.pluck(:room_id)
  #   group_rooms = GroupRoom.find_by(group_id: @group.id, room_id: rooms)

  #   unless group_rooms.nil?
  #     @room = group_rooms.room
  #   else
  #     @room = Room.create
  #     GroupRoom.create(group_id: @group.id, room_id: @room.id)
  #   end
  #   @chats = @room.chats
  #   @chat = Chat.new(room_id: @room.id)
  # end
  def create
    @chat = current_user.chats.new(chat_params)
    @chat.save
  end

  private
  def chat_params
    params.require(:chat).permit(:message, :room_id)
  end
end
