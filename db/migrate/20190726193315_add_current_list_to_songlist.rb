class AddCurrentListToSonglist < ActiveRecord::Migration[5.0]
  def change
    add_column :songlists, :current_list, :boolean
  end
end
