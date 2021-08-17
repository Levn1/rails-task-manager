class AddDefaultValueToCompleted < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :completed, :boolean, default: false
  end
end

# Added a default value to the completed column in the tasks table
