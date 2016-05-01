class Itemtoitems < ActiveRecord::Migration
  def change
  	rename_table :todo_items,:todo_itemssss
  end
end
