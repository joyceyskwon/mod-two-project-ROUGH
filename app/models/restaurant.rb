class Restaurant < ApplicationRecord
  has_many :favorites
  has_many :companies, through: :users
  has_many :users, through: :favorites
end
