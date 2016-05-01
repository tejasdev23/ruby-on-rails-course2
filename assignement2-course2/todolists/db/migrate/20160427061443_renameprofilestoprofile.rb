class Renameprofilestoprofile < ActiveRecord::Migration
  def change
  	rename_table :profiles,:profile
  end
end
