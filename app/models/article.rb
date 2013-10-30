class Article < ActiveRecord::Base
  belongs_to :user

  has_and_belongs_to_many :events

  validates :user, presence: true

  translates :title, :summary, :content

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail
end
