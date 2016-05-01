class Change < ActiveRecord::Migration
  def change
  	change_column :todo_item,:completed,:boolean,:default =>false
  end
end
