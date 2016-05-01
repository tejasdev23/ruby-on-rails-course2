class Xyz < ActiveRecord::Migration
  def change
  	remove_column :todo_items,:todo_list_id
  	# add_reference :todo_items, :todo_list, index: true, foreign_key: true
  end
end
