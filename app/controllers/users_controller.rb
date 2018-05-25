class UsersController < ApplicationController

  def index
      @users = User.displayable_for(current_user)
      @answer = Answer.new

   end



end
