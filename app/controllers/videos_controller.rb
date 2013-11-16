class VideosController < ApplicationController
  def index
    @video = Video.find(:all, :order => "created_at desc", :limit => 1)[0]

    redirect_to video_path(@video)
  end

  def show
    @video = Video.find(params[:id])

    @recent_videos = Video.find(:all, :order => "created_at desc")

    render :index
  end
end
