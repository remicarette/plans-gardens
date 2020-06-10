class Plant < ApplicationRecord
  belongs_to :garden # @plant.garden => Garden
  validates :name, :image_url, presence: true
end
