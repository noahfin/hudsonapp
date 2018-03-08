class Project < ApplicationRecord
   has_and_belongs_to_many :contacts
   has_and_belongs_to_many :companies
   has_and_belongs_to_many :todos
   has_and_belongs_to_many :users
   has_and_belongs_to_many :marketings
end
