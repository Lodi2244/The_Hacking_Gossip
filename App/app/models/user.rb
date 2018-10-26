class User < ApplicationRecord
  has_and_belongs_to_many :cities
  has_many :gossips
  has_many :tags
  has_and_belongs_to_many :privatemessage
end
