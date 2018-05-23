class AnswersController < ApplicationController

  def create
    @answer = current_user.answers.new(answer_params)
    if @answer.save
      return redirect_to answer_path(@answer) if @answer.match?
      redirect_to root_path
    else
      flash[:notice] = 'Impossible to like/dislike, try again :)'
      redirect_to root_path
    end
  end


  def show
    @answer = Answer.find(params[:id])
  end


  private

  def answer_params
    params.require(:answer).permit(:status, :user_id, :receiver_id)
  end

end
