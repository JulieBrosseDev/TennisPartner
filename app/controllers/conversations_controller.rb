class ConversationsController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    byebug
    @conversation = Conversation.new()
    @conversation.users << @answer.user << @answer.receiver
    @conversation.save
    redirect_to answer_conversations_path(@answer)
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end
end
