class Todo < ApplicationRecord

  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :users
end


