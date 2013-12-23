class EventsController < ApplicationController
  def index
    @upcoming_events = Event.find(:all, :conditions => ["date>=?", Date.today], :order => "date desc", :limit => 10)
    @past_events = Event.find(:all, :conditions => ["date<?", Date.today], :order => "date desc")
  end

  def show
    @event = Event.find(params[:id])
  end
end
