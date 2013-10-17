class ChangeSummaryAndContentToTextForArticles < ActiveRecord::Migration
  def change
    change_column :articles, :summary, :text
    change_column :articles, :content, :text
  end
end
