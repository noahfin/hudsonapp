class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :project
  belongs_to :company
  has_many :users
end
