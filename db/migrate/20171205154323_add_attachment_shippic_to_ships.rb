class AddAttachmentShippicToShips < ActiveRecord::Migration[5.1]
  def self.up
    change_table :ships do |t|
      t.attachment :shippic
    end
  end

  def self.down
    remove_attachment :ships, :shippic
  end
end
