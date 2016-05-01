class Rename < ActiveRecord::Migration
  def change
  	rename_column :profiles,:birth,:birth_year
  end
end
