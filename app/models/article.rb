class Article < ActiveRecord::Base
  belongs_to :user

  translates :title, :summary, :content

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail

  rails_admin do
    edit do
      field :user
      field :translations
    end
  end
end
