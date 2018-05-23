class UsersController < ApplicationController

  def index(search_radius = 10)
    if params[:search][:address].present?
      @users.near(params["search"]["address"], search_radius)
    else
      alert
      @users = User.displayable_for(current_user)
      @user = User.first
      @answer = Answer.new
    end
  end
end
