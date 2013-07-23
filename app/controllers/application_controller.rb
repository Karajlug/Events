class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_local_for_admin

  def set_local_for_admin
    if self.class == Admin::DashboardController
      puts ">>>>>>>>>>>>>>"
      I18n.locale = :en
    end
  end
end
