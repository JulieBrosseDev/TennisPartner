class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :ranking, :integer
    add_column :users, :address, :string
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :description, :text
    add_column :users, :opponent_ranking, :integer
    add_column :users, :opponent_gender, :string
    add_column :users, :search_radius, :integer
  end
end
