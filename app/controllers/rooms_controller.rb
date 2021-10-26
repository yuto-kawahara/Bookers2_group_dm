class RoomsController < ApplicationController
  def create
    @group_room = GroupRoom.where(group_id: params[:group_id])

    if @group_room.present?
      room_id = @group_room.pluck(:room_id)
      redirect_to room_path(room_id)  
    else
      @room = Room.create
      @group_room = GroupRoom.create(:room_id => @room.id, :group_id => params[:group_id])
      redirect_to room_path(@room.id)
    end
  end

  def show
    @room = Room.find(params[:id])
    @group_room = GroupRoom.find_by(room_id: @room.id)
    @group_user = Group.find(@group_room.group_id).group_users
    if @group_user.where(user_id: current_user.id).present?
      @chats = @room.chats
      @chat = Chat.new
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
