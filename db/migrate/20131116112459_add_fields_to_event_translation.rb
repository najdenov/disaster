class AddFieldsToEventTranslation < ActiveRecord::Migration
  def change
    add_column :event_translations, :location, :string
  end
end
