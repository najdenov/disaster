class AddAttachmentPictureToPicOfTheWeeks < ActiveRecord::Migration
  def self.up
    change_table :pic_of_the_weeks do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :pic_of_the_weeks, :picture
  end
end
