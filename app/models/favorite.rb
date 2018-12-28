class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :restaurant_id, presence: true
end
