class TranslateAlbumTitle < ActiveRecord::Migration
  def self.up
    Album.drop_translation_table!
    Album.create_translation_table!({
      :title => :string,
      :summary => :text
    })
  end

  def self.down
    Album.drop_translation_table! :migrate_data => true
  end
end
