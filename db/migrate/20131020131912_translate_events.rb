class TranslateEvents < ActiveRecord::Migration
  def self.up
    Event.create_translation_table!({
      :title => :string,
      :summary => :text,
      :content => :text
    })
  end

  def self.down
    Event.drop_translation_table! :migrate_data => true
  end
end
