class Event < ActiveRecord::Base
  translates :title, :summary, :content

  has_and_belongs_to_many :articles
  has_and_belongs_to_many :albums

  validates :picture, presence: true
  validates :date, presence: true

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_attached_file :picture, :styles => { :details => "800x800>", :thumb => "500x350" }
end
