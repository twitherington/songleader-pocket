class AddPitchAndSongNumberToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :song_number, :integer
    add_column :songs, :pitch_id, :integer
  end
end
