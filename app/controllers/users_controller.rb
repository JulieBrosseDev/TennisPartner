class UsersController < ApplicationController
  has_scope :by_opponent_ranking
  has_scope :all_except_I
  has_scope :by_opponent_gender
  has_scope :by_search_radius

  def index
    # if params[:search_radius, :opponent_gender, :opponent_ranking].present?
    #   @users = User.near(params["search_radius"], 20)
    # else

    #@users = apply_scopes(User).all
    @users = User.displayable_for(current_user)
    @user = User.first
    @answer = Answer.new
    # end
  end
end
