class CreateSliderItems < ActiveRecord::Migration
  def change
    create_table :slider_items do |t|
      t.string :caption

      t.timestamps
    end
  end
end
