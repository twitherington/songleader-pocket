class AddSonglistServiceType < ActiveRecord::Migration[5.0]
  def change
    add_column :songlists, :service_type, :string
  end
end
