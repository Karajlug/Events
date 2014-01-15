class HomeController < ApplicationController
  def index
    require 'date'
    require 'persian_string'

    @user = User.new
    # nearest_event
    @event = Event.future.first
    if @event
      @days = (Date.new(@event.datetime.year,
                        @event.datetime.month,
                        @event.datetime.day)- Date.today).to_i
      if @days < 0
        @days = "0"
      end
      @days = @days.to_s.to_persian
    else
      @days = "0".to_persian
    end

    @future_events = Event.future.limit(10)
    @past_events = Event.order("datetime").past.limit(10).reverse
    @loc = I18n.default_locale
    flash = {}
  end
end
