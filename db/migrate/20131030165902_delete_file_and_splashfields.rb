class DeleteFileAndSplashfields < ActiveRecord::Migration
  def change
    remove_column :videos, :splash
    remove_column :videos, :file
  end
end
