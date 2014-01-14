class EventsController < ApplicationController

  def index
    @future_events = Event.future.limit(100)
    @past_events = Event.past.limit(100).reverse
  end

  def full
  end

  def show
    @event = Event.find(params[:id])
    @reverse_dir = "ltr"
    if I18n.locale == :fa
      @reverse_dir = "rtl"
    end
  end
end
