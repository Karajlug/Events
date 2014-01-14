class ParticipantsController < ApplicationController
  before_filter :setup_negative_captcha, :only => [:new, :create]

  def new
    @participant = Participant.new
    @event = Event.find(params[:id])
    if @event.is_full?
      redirect_to :event_is_full
    end
  end

  def create
    @event = Event.find(params[:id])
    if @event.is_full?
      redirect_to :event_is_full
    end

    @participant = Participant.new(@captcha.values)
    @participant.event = @event
    if @captcha.valid? and @participant.save
      flash[:success] = t("You registered to this event")
      @event.capacity -= 1
      @event.save
      redirect_to root_path
    else
      flash[:error] = @captcha.error if @captcha.error
      render :action => 'new'
    end
  end

  private
  def resource_params
    params.require("participant").permit(:first_name, :last_name,
                                         :email, :cell_phone)
  end

  def setup_negative_captcha
    # A secret key entered in environment.rb. 'rake secret' will give you a good one.
    @captcha = NegativeCaptcha.new(secret: NEGATIVE_CAPTCHA_SECRET,
                                   spinner: request.remote_ip,
                                   # Whatever fields are in your form
                                   fields: [:first_name,
                                            :last_name,
                                            :email,
                                            :cell_phone],
                                   params: params)
  end
end
