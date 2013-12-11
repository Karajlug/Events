class UsersController < ApplicationController

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
