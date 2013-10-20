class Event < ActiveRecord::Base
  translates :title, :summary, :content

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_attached_file :picture, :styles => { :details => "800x800>", :thumb => "500x350" }
end
