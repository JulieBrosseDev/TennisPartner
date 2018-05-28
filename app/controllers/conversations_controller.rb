class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.new(params[:id])
    @conversation.save
  end

  def show
    @Conversation = Conversation.find(params[:id])
  end
end
