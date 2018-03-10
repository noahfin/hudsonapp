class Company < ApplicationRecord
 has_and_belongs_to_many :users
 has_and_belongs_to_many :todos
 has_and_belongs_to_many :projects
 has_and_belongs_to_many :contacts
 has_and_belongs_to_many :properties

end
