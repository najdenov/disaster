class AddFieldsToAlbumTranslations < ActiveRecord::Migration
  def change
    add_column :album_translations, :photographer, :string
    add_column :album_translations, :location, :string
  end
end
