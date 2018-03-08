class Campaign < ApplicationRecord
   has_and_belongs_to_many :users
   has_and_belongs_to_many :todos
   has_and_belongs_to_many :contacts
   has_and_belongs_to_many :properties
   has_and_belongs_to_many :project
   has_and_belongs_to_many :marketings
end
