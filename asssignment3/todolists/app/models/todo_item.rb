class TodoItem < ActiveRecord::Base
	def self.get_no_of_completed_todos
		TodoItem.where(completed: true).count
	end
end
