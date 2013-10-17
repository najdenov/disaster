class TranslateSliderItems < ActiveRecord::Migration
  def self.up
    SliderItem.create_translation_table!({
      :caption => :text
    })
  end

  def self.down
    SliderItem.drop_translation_table! :migrate_data => true
  end
end
