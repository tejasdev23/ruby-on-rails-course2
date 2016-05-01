class TodoList < ActiveRecord::Base
  belongs_to :user
  default_scope {order:list_due_date}
  has_many :todo_items,:dependent =>:destroy
end
