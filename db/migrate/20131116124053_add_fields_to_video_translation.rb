class AddFieldsToVideoTranslation < ActiveRecord::Migration
  def change
    add_column :video_translations, :location, :string
    add_column :video_translations, :author, :string
  end
end
