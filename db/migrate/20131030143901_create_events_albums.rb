class CreateEventsAlbums < ActiveRecord::Migration
  def change
    create_table :albums_events do |t|
      t.integer :event_id
      t.integer :album_id
    end
  end
end
