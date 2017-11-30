class AddShippicColumnsToUsers < ActiveRecord::Migration[5.1]
  def up
    add_attachment :users, :shippic
  end

  def down
    remove_attachment :users, :shippic
  end
end
