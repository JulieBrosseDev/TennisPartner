namespace :answers do
  desc "Reset all answers"
  task reset: :environment do
    Answer.destroy_all
    p "all answers have been deleted...."
  end
end
