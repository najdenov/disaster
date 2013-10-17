class DefaultController < ApplicationController
  def index
    @articles = Article.find(:all, :order => "created_at desc", :limit => 2)
  end
end
