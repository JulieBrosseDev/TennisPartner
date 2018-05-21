class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  enum status: [:like, :dislike, :match]
  validates :status, presence: true
end
