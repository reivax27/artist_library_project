class Album < ApplicationRecord
  belongs_to :artist

  validates :name, :units_sold, presence: true
  validates :units_sold, numericality: { only_integer: true }
end
