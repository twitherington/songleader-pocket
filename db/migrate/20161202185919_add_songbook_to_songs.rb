class AddSongbookToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :songbooks, :integer
  end
end
