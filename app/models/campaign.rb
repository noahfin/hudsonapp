class Campaign < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :project
  belongs_to :todo
end
