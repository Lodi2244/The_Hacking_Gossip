class Gossip < ApplicationRecord
  has_one :user
  has_many :comments
  has_many :likes
end
