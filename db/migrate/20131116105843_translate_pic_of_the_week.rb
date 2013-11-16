class TranslatePicOfTheWeek < ActiveRecord::Migration
  def self.up
    PicOfTheWeek.create_translation_table!({
      :rider => :string,
      :photographer => :string,
      :location => :string
    })
  end

  def self.down
    PicOfTheWeek.drop_translation_table! :migrate_data => true
  end
end
