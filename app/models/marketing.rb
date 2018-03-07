class Marketing < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :todo
end
