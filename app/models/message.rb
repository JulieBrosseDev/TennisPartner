class Message < ApplicationRecord
  belongs_to :user_id
  belongs_to :conversation_id

  validates :content, presence: true
end
