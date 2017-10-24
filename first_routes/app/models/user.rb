class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artwork_shares,
  foreign_key: :user_id,
  primary_key: :id,
  class_name: :ArtworkShare

  has_many :shared_artworks,
  through: :artwork_shares,
  source: :artwork

  has_many :comments,
  foreign_key: :user_id,
  primary_key: :id,
  class_name: :Comment




end
