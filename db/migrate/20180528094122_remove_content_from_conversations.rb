class RemoveContentFromConversations < ActiveRecord::Migration[5.1]
  def change
    remove_column :conversations, :content, :text
  end
end
