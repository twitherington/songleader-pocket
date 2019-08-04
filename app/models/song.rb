class Song < ApplicationRecord
  # belongs_to :category
  # belongs_to :songbooks
  # belongs_to :songlists
  # has_one :pitches
  # has_many :songbooks
  has_many :songlist_songs
  has_many :songlists, through: :songlist_songs

  validates :name, presence: true, uniqueness: false
end
