class RenameColumnNames < ActiveRecord::Migration
  def change
    rename_column :songs, :artist_id_id, :artist_id
    rename_column :songs, :genre_id_id, :genre_id
  end
end
