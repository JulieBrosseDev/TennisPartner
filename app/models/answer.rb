class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  enum status: [:like, :dislike, :match]
  validates :status, presence: true
  validates :answer, uniqueness: { scope: :user }

  scope :involving, ->(receiver, user) { where(user: receiver).where(receiver: user) }
  scope :likes_between, ->(receiver, user) { involving(receiver, user).like }

  before_create :check_for_match

  private

  def check_for_match
    # On sort de la method si le receveur n'a pas deja liké le user
    return unless receiver.already_liked?(receiver)
    # On set le status de l'answer en cours de creation a match
    self.status = :match
    # On update le like du receveur pour devenir à son tour un match
    self.class.likes_between(receiver, user).each &:match!
  end
end
