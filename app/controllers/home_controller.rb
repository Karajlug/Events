class HomeController < ApplicationController
  def index
    require 'date'
    require 'persian_string'

    @user = User.new
    # nearest_event
    @event = Event.order('datetime').last
    if @event
      @days = (Date.new(@event.datetime.year,
                        @event.datetime.month,
                        @event.datetime.day)- Date.today).to_i
      if @days < 0
        @days = "0"
      end
      @days.to_s.to_persian
    else
      @days = "0".to_persian
    end

    @future_events = Event.future.order('datetime').limit(5)
    @past_events = Event.past.order('datetime').limit(5)
    @loc = I18n.default_locale

  end
end
