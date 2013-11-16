class CreatePicOfTheWeeks < ActiveRecord::Migration
  def change
    create_table :pic_of_the_weeks do |t|

      t.timestamps
    end
  end
end
