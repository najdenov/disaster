class AddSloganToPage < ActiveRecord::Migration
  def change
    Page.drop_translation_table!

    Page.create_translation_table!({
      :title => :string,
      :slogan => :string,
      :content => :text
    })
  end
end
