class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new(message_params.merge(user:current_user))
    @message.save
    redirect_to conversation_path(@conversation)
  end

  def message_params
  params.require(:message).permit(:content)
  end
end
