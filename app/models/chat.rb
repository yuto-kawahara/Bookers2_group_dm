class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :group_room, optional: true

  validates :message, presence: true, length: { maximum: 140 }
end
