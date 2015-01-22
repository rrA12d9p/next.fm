class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :song_id
      t.string :title
      t.integer :user_id
    end
  end
end
