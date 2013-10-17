class AddAttachmentPictureToSliderItems < ActiveRecord::Migration
  def self.up
    change_table :slider_items do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :slider_items, :picture
  end
end
