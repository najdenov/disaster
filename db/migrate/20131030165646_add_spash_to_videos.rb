class AddSpashToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :splash, :string
  end
end
