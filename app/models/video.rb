class Video < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  translates :title, :summary

  has_attached_file :splash, :styles => { :thumb => "300x300" }
  has_attached_file :file

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail
end
