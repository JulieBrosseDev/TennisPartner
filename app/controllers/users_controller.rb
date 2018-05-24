class UsersController < ApplicationController

  def index
      @users = User.displayable_for(current_user)
      @user = User.first
      @answer = Answer.new
   end
end
