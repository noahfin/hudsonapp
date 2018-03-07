class Space < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  belongs_to :property
  belongs_to :todo
  belongs_to :marketing
end
