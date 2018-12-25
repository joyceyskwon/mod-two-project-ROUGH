class User < ApplicationRecord
  belongs_to :company
  has_many :favorites
  has_many :restaurants, through: :favorites

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Relationship'
  has_many :followees, through: :followed_users

  has_many :following_users, foreign_key: :followee_id, class_name: 'Relationship'
  has_many :followers, through: :following_users
end
