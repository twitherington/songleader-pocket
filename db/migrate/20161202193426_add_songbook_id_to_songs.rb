class AddSongbookIdToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :songbook_id, :integer
  end
end
