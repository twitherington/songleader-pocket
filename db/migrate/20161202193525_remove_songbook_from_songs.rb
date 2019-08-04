class RemoveSongbookFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :songbooks, :integer
  end
end
