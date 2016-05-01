class Renametabletodolistocapital < ActiveRecord::Migration
  def change
  	rename_table :todolists,:Todolist
  end
end
