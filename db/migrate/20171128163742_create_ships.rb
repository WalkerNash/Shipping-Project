class CreateShips < ActiveRecord::Migration[5.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :containers
      t.string :location
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
