class Video < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  translates :title, :summary

  has_attached_file :splash, :styles => { :thumb => "800x800>" }
  has_attached_file :file

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail

  def stream
    if self.url
      return self.url
    else
      return self.file.url
    end
  end
end
