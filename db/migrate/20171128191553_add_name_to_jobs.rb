class AddNameToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :name, :string
  end
end
