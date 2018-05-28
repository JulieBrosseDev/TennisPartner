class Conversation < ApplicationRecord
  belongs_to :answer
  has_many :messages
end


