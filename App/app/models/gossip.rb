class Gossip < ApplicationRecord
  has_one :user
  has_many :tags
end
