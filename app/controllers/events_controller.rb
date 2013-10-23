class EventsController < ApplicationController
  def index
    @events = Event.find(:all, :order => "created_at desc", :limit => 10)
  end

  def show
    @event = Event.find(params[:id])
  end
end
