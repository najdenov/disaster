class AlbumsController < ApplicationController
  def index
    @albums = Album.find(:all, :order => "created_at desc", :limit => 10)
  end

  def show
    @album = Album.find(params[:id])
  end
end
