class CreateEventsArticles < ActiveRecord::Migration
  def change
    create_table :articles_events do |t|
      t.integer :event_id
      t.integer :article_id
    end
  end
end
