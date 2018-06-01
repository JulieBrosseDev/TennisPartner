namespace :answers do
  desc "Reset all answers"
  task reset: :environment do
    Answer.destroy_all
    p "all answers have been deleted...."
    ConversationUser.destroy_all
    Conversation.destroy_all
    Message.destroy_all
  end
end
