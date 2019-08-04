class Songlist < ApplicationRecord
  has_many :songlist_songs
  has_many :songs, through: :songlist_songs
end
