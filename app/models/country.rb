class Country < ApplicationRecord

  has_many :artists, dependent: :nullify

  validates :name, presence: true
end
