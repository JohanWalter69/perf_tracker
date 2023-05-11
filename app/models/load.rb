class Load < ApplicationRecord
  belongs_to :exercice

  validates :max_load, numericality: { only_float: true, in: (0..300) }
end
