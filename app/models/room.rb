class Room < ApplicationRecord
  has_many :group_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
end
