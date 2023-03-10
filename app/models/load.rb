class Load < ApplicationRecord
  belongs_to :exercice

  validates :rate, numericality: { only_float: true, in: (0..300) }
end
