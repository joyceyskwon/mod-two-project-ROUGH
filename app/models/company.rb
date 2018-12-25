class Company < ApplicationRecord
  has_many :users
  has_many :restaurants, through: :users
end
