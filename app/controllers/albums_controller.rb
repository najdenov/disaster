class AlbumsController < ApplicationController
  def index
    @last_albums = Album.find(:all, :order => "created_at desc", :limit => 2)
    @albums = Album.find(:all, :order => "created_at desc", :limit => 10)
  end

  def show
    @album = Album.find(params[:id])
  end
end
