class UsersController < ApplicationController

  # Reponse to /
  def index
    require 'date'

    @user = User.new
    @remaining = (Date.new(2013, 10, 21) - Date.today).to_i
    @loc = I18n.default_locale
  end

  def create
    user = User.new(params.require(:user).permit(:email))

    if user.save
      flash[:success] = t(:success)
    else
      flash[:error] = t(:error)
    end
    redirect_to root_url

  end

end
