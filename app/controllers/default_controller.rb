class DefaultController < ApplicationController
  def index
    @articles = Article.find(:all, :order => "created_at desc", :limit => 2)
    @slider_items = SliderItem.find(:all, :order => "created_at desc", :limit => 5)
  end
end
