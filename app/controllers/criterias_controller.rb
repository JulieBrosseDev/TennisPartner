class CriteriasController < ApplicationController

   def edit
    @user = User.find(params[:id])
   end

   def update
    @user = User.find(params[:id])
      if @user.update(user_params)
      redirect_to edit_user_registration_path(@user)
    else
      @user.errors.full_messages
      render :edit
   end
 end

   private

   def user_params
    params.require(:user).permit(:opponent_ranking, :opponent_gender, :search_radius)
   end
end
