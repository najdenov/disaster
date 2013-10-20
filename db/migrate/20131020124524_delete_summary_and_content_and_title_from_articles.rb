class DeleteSummaryAndContentAndTitleFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :title
    remove_column :articles, :summary
    remove_column :articles, :content
  end
end
