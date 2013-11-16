class AddAttachmentPictureToAlbums < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :albums, :picture
  end
end
