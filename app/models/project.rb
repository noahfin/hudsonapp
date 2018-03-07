class Project < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :contact
  has_many :todos
  has_many :compaines
  has_many :compaines
  has_many :contact
end
