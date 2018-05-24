class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  DEFAULTS = {
    search_radius: 10,
  }.freeze

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :answers
  has_many :receiver_answers, foreign_key: "receiver_id", class_name: 'Answer'

  # validates :name, presence: true
  # validates :ranking, presence: true
  # validates :gender, presence: true
  # validates :age, presence: true
  # validates :address, presence: true
  # validates :picture, presence: true

  scope :all_except_I, ->(user) { where.not(id: user) }
  scope :by_opponent_ranking, ->(opponent_ranking) { where(ranking: opponent_ranking) }
  scope :by_opponent_gender, ->(opponent_gender) { where(gender: opponent_gender) }

  scope :has_answer, ->(user) { joins(:answers).where(answers: { user: user})}
  scope :has_feedback_by, ->(user) {joins(:receiver_answers).merge(Answer.where(user: user))}
  scope :has_no_feedback_by, ->(user) {where.not(id: has_feedback_by(user))}
  scope :displayable_for, ->(user) { all_except(user).has_no_feedback_by(user).near(user.address, user.safe_search_radius)}

  
  def already_liked?(user)
    user.receiver_answers.like.exists?(user: self)
  end

  def safe_search_radius
    search_radius || DEFAULT[:search_radius]
  end

end

