class ChangeSonglistServiceTypeToString < ActiveRecord::Migration[5.0]
  def change
    remove_column :songlists, :service_type, :integer
  end
end
