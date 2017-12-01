class AddUserIdToShips < ActiveRecord::Migration[5.1]
  def change
    add_column :ships, :user_id, :integer
  end
end
