class CreateSongbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :songbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end
