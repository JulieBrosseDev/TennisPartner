class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :answers
  has_many :receiver_answers, foreign_key: "receiver_id"

  validates :name, presence: true
  validates :ranking, presence: true
  validates :gender, presence: true
  validates :age, presence: true

  scope :all_except, ->(user) { where.not(id: user) }
  scope :by_opponent_ranking, ->(opponent_ranking) { where(opponent_ranking: opponent_ranking) }
  scope :by_opponent_gender, ->(opponent_gender) { where(opponent_gender: opponent_gender) }
  scope :by_search_radius, ->(search_radius) { where(search_radius: search_radius) }

end
