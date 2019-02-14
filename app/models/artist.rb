class Artist < ApplicationRecord
  has_many :songs
  has_many :albums

  validates :name, :alias, presence: true
end
