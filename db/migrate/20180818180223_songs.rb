class Songs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.integer :genre_id
    end
  end
end
