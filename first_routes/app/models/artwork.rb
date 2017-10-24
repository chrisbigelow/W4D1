class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :image_url, uniqueness: true
  validates :artist_id, uniqueness: { scope: :title }


  has_many :artwork_shares,
  foreign_key: :artwork_id,
  primary_key: :id,
  class_name: :ArtworkShare

  has_many :shared_viewers,
  through: :artwork_shares,
  source: :viewer

  has_many :comments,
  foreign_key: :artwork_id,
  primary_key: :id,
  class_name: :Comment




end
