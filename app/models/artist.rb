class Artist < ApplicationRecord

  belongs_to :country, optional: true
  has_many :albums, dependent: :destroy

  validates :name, presence: true
end
