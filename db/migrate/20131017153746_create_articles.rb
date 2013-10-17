class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.string :content
      t.references :user

      t.timestamps
    end
  end
end
