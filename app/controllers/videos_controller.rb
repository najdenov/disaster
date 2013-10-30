class VideosController < ApplicationController
  def index
    @video = Video.find(:all, :order => "created_at desc", :limit => 1)[0]
  end
end
