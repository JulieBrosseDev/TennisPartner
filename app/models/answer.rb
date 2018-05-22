class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  enum status: [:like, :dislike, :match]
  validates :status, presence: true
  before_create :match_checking


  def match_checking
    self.status = :match

  end
end
