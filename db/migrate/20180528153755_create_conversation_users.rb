class CreateConversationUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :conversation_users do |t|
      t.references :conversation, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
