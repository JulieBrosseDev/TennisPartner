class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  enum status: [:like, :dislike, :match]
  validates :status, presence: true

  scope :invitations, ->(receiver, user) { where(user: receiver).where(receiver: user) }

  before_create :check_match

  private

  def check_match
    return if receiver.already_matched?(user)
    self.status = :match
  end
end
