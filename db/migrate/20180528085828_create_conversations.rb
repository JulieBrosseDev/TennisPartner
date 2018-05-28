class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.text :content
      t.references :answer, foreign_key: true, index: true

      t.timestamps
    end
  end
end
