class EventsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    @reverse_dir = "ltr"
    if I18n.locale == :fa
      @reverse_dir = "rtl"
    end
  end
end
