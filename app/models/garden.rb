class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # @garden.plants => [Plant, Plant, Plant]
  validates :name, :banner_url, presence: true
end
