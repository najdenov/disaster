class DefaultController < ApplicationController
  def index
    @articles = Article.find(:all, :order => "created_at desc", :limit => 2)
    @slider_items = SliderItem.find(:all, :order => "created_at desc", :limit => 5)
    @pro_team = Member.find(:all, :order => "created_at desc", :limit => 3)
    @events = Event.find(:all, :order => "created_at desc", :limit => 2)

    @pic_week = PicOfTheWeek.find(:all, :order => "created_at desc", :limit => 1)[0]
  end

  def association
    @page = Page.find_by_slug('association')
  end

  def constructions
    @page = Page.find_by_slug('constructions')
  end

  def school
    @page = Page.find_by_slug('school')
  end
end
