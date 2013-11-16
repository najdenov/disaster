class Video < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  has_and_belongs_to_many :events

  translates :title, :summary, :location, :author

  has_attached_file :splash, :styles => { :detailed => "800x800>", :square => "200x200#" }
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

  def is_vimeo?
    if self.code
      return self.code.include? "vimeo"
    else
      return false
    end
  end
end
