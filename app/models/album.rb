class Album < ActiveRecord::Base
  has_many :photos
  belongs_to :user

  has_and_belongs_to_many :events

  translates :title, :summary, :photographer, :location

  validates :user, presence: true
  validates :date, presence: true

  accepts_nested_attributes_for :photos, :allow_destroy => true
  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_attached_file :picture, :styles => { :details => "800x800>", :thumb => "200x200#" }

  has_paper_trail
end
