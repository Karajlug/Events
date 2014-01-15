require "persian_string"


class EventsController < ApplicationController

  def index
    @future_events = Event.order("datetime DESC").future.limit(100)
    @past_events = Event.order("datetime ASC").past.limit(100).reverse
  end

  def full
  end

  def show
    @event = Event.find(params[:id])
    @reverse_dir = "ltr"
    if I18n.locale == :fa
      @reverse_dir = "rtl"
    end
    @event_datetime = @event.datetime.to_s(:short).in_time_zone('Tehran').to_s
    @event_datetime = @event_datetime.to_persian
    @event_datetime.gsub!("-", "/")
    @event_datetime.gsub!(" ", " -  ")
    @event_datetime = @event_datetime.split(":")[0..1].join(":")
  end

  def feed
    @title = t(:future_events)
    @future_events = Event.future.limit(20)
    @updated = @future_events.last.updated_at unless @future_events.empty?

    respond_to do |f|
      f.atom { render :layout => false }
      f.rss { redirect_to feed_path(:format => :atom), :status => :moved_permanently }
    end
  end
end
