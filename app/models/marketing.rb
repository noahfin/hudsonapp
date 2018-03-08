class Marketing < ApplicationRecord
  has_many :contacts
  has_many :companies
  has_many :projects
  has_many :users
end
