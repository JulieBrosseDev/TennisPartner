class UsersController < ApplicationController

  def index
      @users = User.displayable_for(current_user)
      @answer = Answer.new

   end

   def edit
    @user = User.find(params[:id])
   end

   def update
    @user = User.find(params[:id])
      if @user.update(user_params)
      flash[:success] = 'Your profile has been updated.'
      redirect_to profile_path(@user.user_id)
    else
      @user.errors.full_messages
      flash[:error] = @user.errors.full_messages
      render :edit
   end
 end

   private

   def user_params
    params.require(:user).permit(:name, :ranking, :gender, :age, :address, :picture)
   end
end
