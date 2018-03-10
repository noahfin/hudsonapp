class AssignedTodo < ApplicationRecord
  has_many: users
  belongs_to: todo
end
