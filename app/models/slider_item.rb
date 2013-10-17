class SliderItem < ActiveRecord::Base
  has_attached_file :picture, :styles => { :detailed => "1920x1920>", :thumb => "100x100>" }

  translates :caption

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail

  rails_admin do
    edit do
      field :picture
      field :translations
    end
  end
end
