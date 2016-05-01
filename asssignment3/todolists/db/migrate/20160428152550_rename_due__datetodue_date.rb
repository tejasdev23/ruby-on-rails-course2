class RenameDueDatetodueDate < ActiveRecord::Migration
  def change
  	rename_column :todo_items,:due__date,:due_date
  end
end
