class SonglistSong < ApplicationRecord
  belongs_to :songlist
  belongs_to :song
end
