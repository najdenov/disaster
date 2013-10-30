class Photo < ActiveRecord::Base
  belongs_to :album

  translates :caption

  has_attached_file :file, :styles => { :detailed => "1920x1920>", :thumb => "300x300>" }

  has_paper_trail

  validates :file, presence: true
  validates :album, presence: true

  accepts_nested_attributes_for :translations, :allow_destroy => true

  rails_admin do
    list do
      field :caption do
        pretty_value do
          bindings[:view].render :partial => "photo_caption", :locals => {:field => self, :object => bindings[:object]}
          #bindings[:view].tag(:input, { :class => "photo_caption_input", :value => value, :data => { :id => bindings[:object].id.to_s } })
        end
      end
      field :file
      field :album
    end
  end
end
