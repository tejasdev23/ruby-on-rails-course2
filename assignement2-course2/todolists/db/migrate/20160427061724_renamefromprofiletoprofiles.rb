class Renamefromprofiletoprofiles < ActiveRecord::Migration
  def change
  	rename_table :profile,:profiles
  end

end
