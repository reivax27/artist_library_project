class Artist < ApplicationRecord
  validates :name, :alias, presence: true
end
