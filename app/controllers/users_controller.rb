require 'mailing_list'

class UsersController < ApplicationController

  def create
    user = User.new(params.require(:user).permit(:email))

    if user.save
      flash[:success] = t(:success)
      ML.add_user(user)
    else
      flash[:error] = t(:error)
    end
    redirect_to root_url

  end

end
