class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new(message_params.merge(user: current_user))
    if @message.save
      respond_to do |format|
        format.html { redirect_to conversation_path(@conversation) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'conversation/show' }
        format.js
      end
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
