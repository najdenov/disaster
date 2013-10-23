class Page < ActiveRecord::Base
  translates :title, :content, :slogan

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail
end
