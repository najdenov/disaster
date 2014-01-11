class AlbumsController < ApplicationController
  def index
    @last_albums = Album.find(:all, :order => "date desc", :limit => 2)
    @albums = Album.find(:all, :order => "date desc", :limit => 10)
  end

  def show
    @album = Album.find(params[:id])
  end
end
