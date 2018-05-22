class AnswersController < ApplicationController
  def show
    @answer = Answer.find(params[:id])
  end

  def create
    @answer = Answer.new(params[:answer])
    @answer.save
  end
end
