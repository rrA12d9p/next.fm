class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :album
      t.integer :soundcloud_user_id
    end
  end
end
