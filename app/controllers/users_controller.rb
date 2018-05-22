class UsersController < ApplicationController
  has_scope :by_opponent_ranking
  has_scope :all_except
  has_scope :by_opponent_gender
  has_scope :by_search_radius

  def index
    # if params[:search_radius, :opponent_gender, :opponent_ranking].present?
    #   @users = User.near(params["search_radius"], 20)
    # else

    #@users = apply_scopes(User).all
    @users = User.first

    # end
  end
end
