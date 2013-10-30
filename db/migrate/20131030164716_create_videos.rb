class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.references :user

      t.timestamps
    end

    Video.create_translation_table!({
      :title => :string,
      :summary => :text
    })
  end

  def self.down
    drop_table :videos

    Video.drop_translation_table!
  end
end
