class DeleteCaptionFromSliderItems < ActiveRecord::Migration
  def change
    remove_column :slider_items, :caption
  end
end
