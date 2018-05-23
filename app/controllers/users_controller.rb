class UsersController < ApplicationController

  def index
    # if params[:search_radius, :opponent_gender, :opponent_ranking].present?
    #   @users = User.near(params["search_radius"], 20)
    # else
    #@users = apply_scopes(User).all

    @users = User.displayable_for(current_user)
    @user = User.find(15)
    @answer = Answer.new
    # end
  end
end
