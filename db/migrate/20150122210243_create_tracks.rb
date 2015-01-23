class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :playlist_id
      
      t.string :artist_name
      t.string :album_name
      t.string :track_name
      t.string :artwork_url
      t.integer :sc_user_id
      t.integer :sc_artist_id
      t.integer :sc_album_id
      t.integer :sc_track_id
    end
  end
end
