class TranslatePage < ActiveRecord::Migration
  def self.up
    Page.create_translation_table!({
      :title => :string,
      :content => :text
    })
  end

  def self.down
    Page.drop_translation_table! :migrate_data => true
  end
end
