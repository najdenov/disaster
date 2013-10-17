class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  translates :name

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_paper_trail

  rails_admin do
    edit do
      field :avatar
      field :email
      field :password
      field :password_confirmation
      field :last_sign_in_at
      field :last_sign_in_ip
      field :translations
    end
  end
end
