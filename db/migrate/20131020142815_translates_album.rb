class TranslatesAlbum < ActiveRecord::Migration
  def self.up
    Album.create_translation_table!({
      :summary => :text
    })
  end

  def self.down
    Album.drop_translation_table! :migrate_data => true
  end
end
