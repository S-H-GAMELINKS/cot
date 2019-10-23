class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.boolean :done
      t.data :date

      t.timestamps
    end
  end
end
