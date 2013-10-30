class AddAttachmentSplashToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :splash
    end
  end

  def self.down
    drop_attached_file :videos, :splash
  end
end
