class ConversationsController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    @conversation = Conversation.new()
    @conversation.users << @answer.user << @answer.receiver
    @conversation.save
    redirect_to conversation_path(@conversation)
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end
end
