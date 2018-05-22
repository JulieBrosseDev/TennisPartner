class UsersController < ApplicationController
  def index
    # if params[:search_radius, :opponent_gender, :opponent_ranking].present?
    #   @users = User.near(params["search_radius"], 20)
    # else
      @users = User.all
    # end
  end
end
