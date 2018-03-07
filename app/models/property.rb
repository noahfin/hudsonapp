class Property < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :marketing
  belongs_to :campaign
  belongs_to :todo
end
