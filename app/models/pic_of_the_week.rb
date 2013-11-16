class PicOfTheWeek < ActiveRecord::Base
  translates :rider, :location, :photographer

  has_attached_file :picture, :styles => { :details => "800x800>", :thumb => "400x400#" }

  accepts_nested_attributes_for :translations, :allow_destroy => true

  validates :picture, presence: true

  has_paper_trail
end
