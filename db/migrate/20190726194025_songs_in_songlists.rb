class SongsInSonglists < ActiveRecord::Migration[5.0]
  def change
    create_table :songlist_songs do |t|
      t.integer :songlist_id
      t.integer :song_id
    end
  end
end
