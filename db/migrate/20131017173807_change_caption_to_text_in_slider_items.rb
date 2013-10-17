class ChangeCaptionToTextInSliderItems < ActiveRecord::Migration
  def change
    change_column :slider_items, :caption, :text
  end
end
