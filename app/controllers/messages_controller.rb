class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to conversation_path(@conversation)
  end

  def message_params
  params.require(:message).permit(:content)
end
end
