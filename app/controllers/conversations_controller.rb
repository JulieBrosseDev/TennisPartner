class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.save
  end

  def show
    @Conversation = Conversation.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:conversation).permit(:content)
  end
end
