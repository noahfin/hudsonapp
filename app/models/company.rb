class Company < ApplicationRecord
has_many :users
has_many :todos
has_many :projects
has_many :contacts
belongs_to :user

end
