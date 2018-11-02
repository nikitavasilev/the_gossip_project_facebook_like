class Gossip < ApplicationRecord
  has_many :comments, dependent: :destroy
end
