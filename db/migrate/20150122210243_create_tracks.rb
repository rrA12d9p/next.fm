class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :playlist_id
      
      t.string :title
      t.string :username
      t.string :artwork_url
      t.integer :sc_user_id
      t.integer :sc_track_id
    end
  end
end
