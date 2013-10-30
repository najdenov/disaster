class Album < ActiveRecord::Base
  has_many :photos
  belongs_to :user

  translates :title, :summary

  validates :user, presence: true

  accepts_nested_attributes_for :photos, :allow_destroy => true
  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail
end
