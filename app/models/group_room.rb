class GroupRoom < ApplicationRecord
  belongs_to :group
  belongs_to :room
end
