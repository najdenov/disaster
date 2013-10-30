class RemoveAlbumTitleFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :title
  end
end
