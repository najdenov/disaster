class TranslatesArticles < ActiveRecord::Migration
  def self.up
    Article.create_translation_table!({
      :title => :string,
      :summary => :text,
      :content => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Article.drop_translation_table! :migrate_data => true
  end
end
