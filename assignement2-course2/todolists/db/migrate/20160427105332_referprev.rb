class Referprev < ActiveRecord::Migration
  def change
  	change_column :todo_item,:completed,:boolean
  end
end
