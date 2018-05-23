class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers
  has_many :receiver_answers, foreign_key: "receiver_id", class_name: 'Answer'

  validates :name, presence: true
  validates :ranking, presence: true
  validates :gender, presence: true
  validates :age, presence: true

  scope :all_except, ->(user) { where.not(id: user) }
  scope :by_opponent_ranking, ->(opponent_ranking) { where(ranking: opponent_ranking) }
  scope :by_opponent_gender, ->(opponent_gender) { where(gender: opponent_gender) }

  def already_liked?(user)
    user.receiver_answers.like.exists(user: self)
  end
end
