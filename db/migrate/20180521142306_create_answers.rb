class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :status
      t.references :user, foreign_key: true, index: true
      t.references :receiver, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
