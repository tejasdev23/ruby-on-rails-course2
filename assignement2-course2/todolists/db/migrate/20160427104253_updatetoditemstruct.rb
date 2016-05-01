class Updatetoditemstruct < ActiveRecord::Migration
  def change

  	rename_table :todoitems,:todo_item
  	change_column :todo_item, :description, :text
  end
end
