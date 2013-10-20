class Photo < ActiveRecord::Base
  belongs_to :album

  has_attached_file :file, :styles => { :detailed => "1920x1920>", :thumb => "300x300>" }

  has_paper_trail
end
