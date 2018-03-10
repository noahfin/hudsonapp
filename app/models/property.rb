class Property < ApplicationRecord
   has_and_belongs_to_many :users
   has_and_belongs_to_many :contacts
   has_and_belongs_to_many :marketings
   has_and_belongs_to_many :campaigns
   has_and_belongs_to_many :todos
end
