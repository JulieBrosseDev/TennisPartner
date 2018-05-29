class User < ApplicationRecord
  mount_uploader :picture, PictureUploader

 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

  DEFAULTS = {
    search_radius: 10,
    opponent_gender: ["male", "female"],
    opponent_ranking: (1..5),
    name: "No Name",
    address: "",
    gender: "male",
    ranking: 1,
    age: "",
    picture: "../../assets/images/default.jpg"
  }.freeze

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :conversation_users
  has_many :conversations, through: :conversation_users
  has_many :answers
  has_many :receiver_answers, foreign_key: "receiver_id", class_name: 'Answer'


  # validates :name, presence: true
  # validates :ranking, presence: true
  # validates :gender, presence: true
  # validates :age, presence: true
  # validates :address, presence: true
  # validates :picture, presence: true

  scope :all_except_me, ->(user) { where.not(id: user) }
  scope :opponent_with_ranking, -> (opponent_ranking) { where(ranking: opponent_ranking) }
  scope :opponent_with_gender, ->(opponent_gender) { where(gender: opponent_gender || DEFAULTS[:opponent_gender]) }

  scope :has_answer, ->(user) { joins(:answers).where(answers: { user: user})}
  scope :has_feedback_by, ->(user) {joins(:receiver_answers).merge(Answer.where(user: user))}
  scope :has_no_feedback_by, ->(user) {where.not(id: has_feedback_by(user))}


  scope :displayable_for, ->(user) {
    all_except_me(user)
      .has_no_feedback_by(user)
      .near(user.address, user.safe_search_radius)
      # .opponent_with_ranking(user.opponent_ranking)
      # .opponent_with_gender(user.opponent_gender)
    }


  def already_liked?(user)
    user.receiver_answers.like.exists?(user: self)
  end

  def safe_search_radius
    search_radius  || DEFAULTS[:search_radius]
  end
end

