class ConversationsController < ApplicationController
  def create
    @answer = Answer.find(params[:id])
    @conversation = Conversation.new(answer: @answer_id)
    @conversation.save
    redirect_to conversation_path(@conversation)
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end
end
