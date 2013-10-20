class Member < ActiveRecord::Base
  translates :name, :introduction

  accepts_nested_attributes_for :translations, :allow_destroy => true

  has_attached_file :picture, :styles => { :details => "800x800>", :thumb => "100x100>" }
end
