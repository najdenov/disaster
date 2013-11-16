class AddTableForEventsAndVideos < ActiveRecord::Migration
  def change
    create_table "events_videos", force: true do |t|
      t.integer "event_id"
      t.integer "video_id"
    end
  end
end
