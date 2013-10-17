class Article < ActiveRecord::Base
  belongs_to :user

  translates :title, :summary, :content

  accepts_nested_attributes_for :translations, :allow_destroy => true
end
