class ChangeTodoDoneDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :todos, :done, :boolean, default: false, null: false
  end
end
