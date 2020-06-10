class Garden < ApplicationRecord
  has_many :plants # @garden.plants => [Plant, Plant, Plant]
  validates :name, :banner_url, presence: true
end
