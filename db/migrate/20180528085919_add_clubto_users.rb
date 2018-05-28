class AddClubtoUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :club, :string
  end
end
