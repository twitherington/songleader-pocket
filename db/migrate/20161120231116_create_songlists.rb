class CreateSonglists < ActiveRecord::Migration[5.0]
  def change
    create_table :songlists do |t|
      t.string :name
      t.integer :service_type

      t.timestamps
    end
  end
end
