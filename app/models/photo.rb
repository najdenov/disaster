class Photo < ActiveRecord::Base
  belongs_to :album

  has_attached_file :file, :styles => { :medium => "1920x1920>", :thumb => "100x100>" }

  has_paper_trail
end
