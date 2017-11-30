class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :containers

      t.timestamps
    end
  end
end
