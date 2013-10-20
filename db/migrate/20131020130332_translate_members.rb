class TranslateMembers < ActiveRecord::Migration
  def self.up
    Member.create_translation_table!({
      :name => :string,
      :introduction => :text
    })
  end

  def self.down
    Member.drop_translation_table! :migrate_data => true
  end
end
