class AddAttachmentPictureToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :members, :picture
  end
end
