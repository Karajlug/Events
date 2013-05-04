class UserController < ApplicationController

  # Reponse to /
  def index
    require 'date'

    @user = User.new
    @remaining = (Date.new(2013, 10, 21) - Date.today).to_i

  end

end
