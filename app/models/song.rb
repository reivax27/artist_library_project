class Song < ApplicationRecord
  belongs_to :artist

  validates :title, :description, presence: true
end
