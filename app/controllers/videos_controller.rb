class VideosController < ApplicationController
  def index
    @last_videos = Video.find(:all, :order => "created_at desc", :limit => 2)

    @recent_videos = Video.find(:all, :order => "created_at desc")
  end

  def show
    @video = Video.find(params[:id])

    @recent_videos = Video.find(:all, :order => "created_at desc", :limit => 3)

    render :index
  end
end
