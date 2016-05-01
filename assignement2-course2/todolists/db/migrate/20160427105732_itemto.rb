class Itemto < ActiveRecord::Migration
  def change
  	rename_table :todo_item ,:todo_items
  end
end
