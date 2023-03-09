class Exercice < ApplicationRecord
  belongs_to :user
  has_one :load, dependent: :destroy
  has_one :note, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :note
  accepts_nested_attributes_for :load
end
