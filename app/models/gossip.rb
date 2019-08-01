class Gossip < ApplicationRecord
  belongs_to :user
  has_many :jointabs
  has_many :tags, through: :jointabs
end
