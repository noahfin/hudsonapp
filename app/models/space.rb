class Space < ApplicationRecord
  has_and_belongs_to_many :marketing
  has_and_belongs_to_many :users
  has_and_belongs_to_many :todos
  has_and_belongs_to_many :property

end
