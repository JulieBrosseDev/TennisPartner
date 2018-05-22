class AnswersController < ApplicationController

  def create
    byebug
    @answer = Answer.new(answer_params)
    if @answer.save
      return redirect_to match_show if @answer.match?
      redirect_to users_path
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
